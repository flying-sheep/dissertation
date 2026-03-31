#!/usr/bin/nu

def main [
    target = 'prd_dissertation.pdf'
] {
    let graph = snakemake --detailed-summary -j1 |
        from tsv |
        insert input { $in | get 'input-file(s)' | if $in == '-' { [] } else { split row ',' } } |
        select output_file input |
        each { |it| { $it.output_file: $it.input } } |
        into record

    # get leaf nodes (inputs)
    mut files = $graph | get $target
    mut replaceable = $files | where $it in $graph
    while ($replaceable | is-not-empty) {
        for $r in $replaceable {
            $files = $files | where $it != $r | $in ++ ($graph | get $r) | uniq
        }
        $replaceable = $files | where $it in $graph
    }

    print $"Watching ($files) to build ($target)"
    $files | str join (char newline) | entr snakemake -j4 $target
}
