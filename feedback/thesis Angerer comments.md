# Thesis Philipp Angerer comments

"Enabling technologies for visualization and analysis of single cell RNA-Seq data"

## Feedback

**summary**: good, quite some orga work to be done.

- [x] rephrase and focus needed. see 3rd, 4th, last points in own contributions:
  - [x] CRUCIAL: what is your question? you only describe the WHAT+HOW you do things, but not at all the WHY? motivation to assess relevance *totally* unclear.

    you really need to spend some time on this and exactly state what your **goal** is, **altogether** and then in **each of the 3 (or 4?) projects**, and then what is **state of the art** (without own contributions) and in particular missing and therefore what your **contribution** is (see abstract comments)

    > Added/clarified motivation and state of the art to all project sections

  - [x] summaries of papers and contributions to papers (check how Laleh did it)

    > Added summaries with this formula: first status quo, then “1.3 Geometric diffusions approach for cluster analysis and pseudo-time ordering of single cell differentiation data”, then paper summaries

- [x] really play on your strengths, say data exploding in scRNA-Seq, hence need for good well implemented SOFTWARE, not only theory methods. this is where you excel.

  > Stressed this e.g. in “Organizing Analysis Workflows” section

- [x] title, not sure, what are "enabling technologies". usually high-level summary term, why needed here? analysis is super broad, what type of analysis?

  > Done, new title is “Frameworks of interpretation: Stabilizing scRNA-seq data processing for discovery”
  >
  > I explain in the abstract that this is about the advantages my contributions bring into the field:
  > Building computational frameworks for interoperability, reproducibility, and discoverability of tools.

## own contribs

> Has been totally reworked.
> I now clearly point out pain points in the status quo that can be fixed by software engineering,
> then how they are fixed by software engineering,
> finally how my contributions specifically relate to them.
> See also earlier emails.

- [x] 1.1 Workflow
  Own contribution earlier?
- [x] 1.1.5 Visualization as Analysis steps and result
  at end here you write about own contribution → as reader I am waiting very much for this, then hidden within a detail expl chap → this needs major reorganization see below
- [x] 1.2 Own Contributions
  I was hoping for this earlier
- [x] 2 Methods
  intro missing before you dive into each topic. goal of this chap? methods, background, own contributions? reads like a random mixture to me
- [x] 2.1.3 Gene Relevance
  how does this fit at all to rest, hmm. this is now your own contribution part, right

## Abstract
- [x] **Summary**:

  - [x] emphasize own contribution

    > Totally reworked own contribs

  - [x] motivation: please think about better way how to link the topics, and ask overarching "why" questions before telling the how

  > Added an intro paragraph about all problems I’m going to solve

  - [x] Suggestion: how about changing scope to data complexity plus size, focusing on your novelty + contribution of efficient *software* for analysis, and then Bart-seq as maybe proof-of-concept use and adaption or so.

    (i say this here for abstract, but same holds for intro, crucial to show your goals and novelty of resulting approach. would also adapt title)

  > Done just that

- [x] would go over it once more and clean up text, eg. 3× this in a row etc

  > Multiple editor passes

- [x] "disease and development research" unclear; maybe more explicit example?

  > Added some clarification as well as things this enabled.

- [x] combinatoric options - explain; also sounds as if you pitch for best practice/optimal workflow, which is *not* your goal → adapt to your contribution

  > Explicitly stated what my goal is

- [x] you say what you do, but did not motivate why? in contrary you say there are so many analysis things, and we also did s.t.

  > Added motivation via things that weren’t possible/harder

- [x] "analysis" building blocks, OK get this; maybe really put the framework idea in center. *not* clear what you claim as your contribution - Scanpy itself? AnnData? parts in there? does not come clear. I cannot stress enough how important it is that a) you fully understand what you claim is your own contribution and b) you super clearly formulate this for reviewers. this is a persistent discussion and you absolutely need to make this crystal clear.

  > Added clear explanations what my contrib is

- [x] motivation for each tool and explanation why you need each tool is unclear.

  > Added tool descriptions addressing which niche they fill

- [x] you then super shortly describe method but not WHAT you want to do; this is crucial and really needs reworking, what is your overarching goal, then why did you dev a method (and why is it unique and why needed; these are core questions reviewer will need to answer, and you better help them with this, otherwise tough for them to say what your contrib/novelty was)

  > Added some hints here, but the bulk of this needs of course to be in the text

- [x] cool with bioinformatics for last one

  > Thanks!

- [x] btw, *very* good that you make a cumulative dissertation, and that you are brief

  > I always go for brevity, thanks!

## Pub list

- [x] is this clear somewhere that this is a cumulative dissertation? add as explanation before list of pub.

  > is not that way in other theses I read either, but the “Publication list” section points it out now

- [x] Mention that Scanpy was the 2018 featured paper in the [20 year anniversary](https://genomebiology.biomedcentral.com/20years)

  > Done

- [x] did you check that papers are OK, in particular review OK to list? you may need some signatures from others?

  Yes, they all autopermit:

  - Elsevier: [automatically permitted](https://www.elsevier.com/about/policies/copyright/permissions)
    - Single Cells Make Big Data: https://doi.org/10.1016/j.coisb.2017.07.004
  - Oxford Press: [automatically permitted](https://global.oup.com/academic/rights/permissions/autperm/)
    - Destiny: https://doi.org/10.1093/bioinformatics/btv715
    - Gene Relevance: https://doi.org/10.1093/bioinformatics/btaa198
  - Springer Nature (BMC): [automatically permitted](https://www.springer.com/gp/rights-permissions/obtaining-permissions/882) when including “Material from: AUTHOR, TITLE, JOURNAL TITLE, published [YEAR], [publisher - as it appears on our copyright page]’”
    - Scanpy: https://doi.org/10.1186/s13059-017-1382-0
    - BART-Seq: https://doi.org/10.1186/s13059-019-1748-6

## 1 Introduction
- [x] See summary for Abstract re: focus

  > See there for responses

- [x] "Every aspect of existence" → of OUR exist

  > done

- [x] not sure central dogma super necessary in Bioinformatics thesis, but i guess OK

  > I use it to explain why RNA-seq actually relates to what we’re interested in.

- [x] add some viz for HCA? even just overview of state from web page or review?

- [x] text on examples etc good → please be CAREFUL that you don’t do copy&paste from own papers and reviews *without* citation.

  > I never copy and paste, any possible plagiate finder results would probably just mean that my english isn’t very varied and I tend to explain the same concept similarly.

- [x] add a subsection

  > unclear what that means but it has more subsections now

- [x] say e.g. something on analysis or so

- [x] but: first a section on single cell biology or so?

### 1.1 Workflow
- [x] workflow for what?

  > for “for scRNA-Seq Data Processing”, added.

- [x] Viz before analysis?

  > I explained that vis and analysis are intertwined / a loop, but IMHO it flows better to first explain what we’re interested in, and then how to show it

- [x] Own contribution earlier?

  > Own contribs totally reworked

#### 1.1.1 Lib prep and sequencing
- fig 1.2: pretty!

    > thanks! For reference: it’s now fig 1.3: “ScRNA-Seq library preparation, sequencing, and mapping”

  - [x] maybe unclear that you describe a process from top to bottom, with text being next step.

    > tried to make it more clear by changing how the arrows look

  - [x] caption UNCLEAR. library prep in general? for scRNA-Seq?

    > I describe it

  - [x] in fig unclear where within cell

    > I made grouping of where steps happen clearer

  - [x] dude, how about amplification? molecular barcodes, UMIs? far too much missing

    > all added

  - [x] fix up caption

    > done, looks good now

#### 1.1.2 Counting
- [x] counting of what

  > “of transcripts or reads”, added

#### 1.1.3 Preprocessing
- [x] preprocessing of counts? batch etc?

  > Yes, clarified.

- [x] a figure for everything after count matrix may be nice?

  > There’s already fig 1.4 “batch effect correction” and fig 1.5 “Heterogeneity Analysis approaches”.
  >
  > - [ ] might do a more comprehensive one still

#### 1.1.4 Analysis (of cellular dynamics, heterogeneity and gene roles)
- [x] analysis of what

  > “of cellular dynamics, heterogeneity and gene roles”, added

- [x] here would really make clear what pot. questions could be, then enumerate analysis parts

  > done

- [x] fig 1.4 (cell fates) somewhat nice, but give legend for arrows, add some references and say these things are artificial mostly. but: this is out of place in analysis, this should be in motivating bio questions in the single cell bio part in beginning, no? you’d need a fig for analysis etc

  > Moved and explained arrows.

#### 1.1.5 Visualization (as Analysis steps and result)
- [x] really viz AFTER analysis? often first step

  > see above

- [x] at end here you *write about own contribution* → as reader I am waiting very much for this, then hidden within a detail expl chap → this needs major reorganization see below

  > own contribs have been overhauled

#### 1.1.6 Custom-built pipelines
- [x] custom build vs what? don’t get this. is this about frameworks? scripts?

  > vs reusable code. renamed to “Analysis Pipelines: Status Quo” and made clearer

#### 1.1.7 Frameworks
- [x] framework for scRNA-Seq analysis i guess (title of the overall sec is workflow hmm)

  > “for modular scRNA-Seq Analysis Pipelines”, yes

- [x] for whole section above
  - [x] you need to end with open challenges in the field that you will address

    > added longer intro with history and all, including why that led to problems

  - [x] altogether intro very short and in particular misses biol big questions and then question you can address
    - Large cell numbers (Microfluidics) couldn’t be processed by old pipelines
    - Reproducibility
    - Few/bad embedding tools

    > Addressed all in that intro

- [x] also don’t get link here to rest

  > clarified that it’s about building reusable/remixable steps for pipelines

- [x] good to point out, may add citations. clear why they are needed etc?

  > added and clarified

- [x] the AnnData tech fig in intro, dude? why?

  > moved to methods

- [x] again Bioconductor?

  > yeah, it’s what we’re trying to be better than

- [x] very disorganized, super unclear

  > I totally reorged this subsection, should be clear now!

### 1.2 Own Contributions

> this section is obsolete because of the own contribs overhaul, I tried to address all this while doing it.
>
> 1. My first attempt was to put a single section “Own Contributions” at the end of the Introduction and each contributed article
> 2. My second attempt is based on the comments below, especially “I expected this earlier” and “Do it like Lea”: I split my contributions up into small sections to go at the end of each intro subchapter.
> 3. My third attempt is based on “I didn’t like Lea’s approach after all, do it like Mo”. Who did it exactly like I did it in 1., except that he also mentioned contribution in the discussion.
>
> Comments after the first attempt:

- [x] I was hoping for this earlier, in particular because it was intertwined in above a bit already
- [x] motivation missing though
- [x] CRUCIAL: what is your question? you only describe the WHAT+HOW you do things, but not at all the WHY? motivation to assess relevance *totally* unclear. even worse, in 2nd sentence you say, oh btw., i also analyzed sizes of data sets. this is the core thing of your 4year phd work?
- [x] you really need to spend some time on this and exactly state what your goal is, altogether and then in each of the 3 (or 4?) projects, and then what is state of the art and in particular missing (above you described SOTA already INCLUDING your contributions) and therefore what your contribution is (see abstract comments)
- [x] also tie things together. why the BART-seq? because you had tools to show all this and can use as proof of concept
- [x] often (check other theses) students also shortly write about/summarize other projects they contributed to but do not put into thesis, this is useful and I would recommend this. just looked at rules again from WZW, here you miss points 4 and 5 - 1 page summary for each paper with particular highlighting of your contrib, and 5 inclusion of those papers etc. see WZW
  - [x] this needs quite some additional work, and I kindly ask you to go over this with Carsten first and then give me short answer to points done ok? thanks!
- [x] I though the cumulative thesis also needs contribution to papers and your own contributions. should this be here in intro already? usually separate chapter (e.g. with Laleh). please please please by all means look at other theses and talk with currently finished PhDs, OK? thanks!

## 2 Methods
- [x] intro missing before you dive into each topic. goal of this chap? methods, background, own contributions? reads like a random mixture to me

  > added intros to top level topics (2.1, 2.2, …)

- [x] also if this is methods, where is the results chapter?

  > Nowhere, just like in all other dissertations that I’ve read.
  > The results are discussed in the individual contributed articles and my figures use these datasets as examples.

- [x] maybe give some example or data set to visualize? imagine you presented this as a talk → this would never work to just directly talk about dim red, diff map etc without illustrating a big data set and what you’d look for in that.

  > Same as above: The methods section has figures whose text describes what the corresponding method can be used for.
  > The main methods text only describes the mathematical or software design.
  > Dissertations with more general purpose methods like Mo’s do it that way too.
  > Even dissertations like Valerio’s that are designed for a very specific data type (in his case zebrafish brains) have the methods text explain only details about that data type brains while still not going into individual results.
  > Here too like the figures and individual contributed articles go into individual dataset results.

### 2.1 Dimensionality Reduction
#### Spectral Decomposition
##### 2.1.1.1 PCA
- [x] SVD not defined (U,S,V)

  > done

- [x] when talking about extensions of that in our field, please *by all means* cite our own things at least. I expect you to know these and will ask. e.g. Buettner GLM with missing values etc

  > added this and a few more like Goecken’s

##### 2.1.1.2 DMs
- [x] PCA then DM does not work. would make point more on linear and nonlinear red methods, then show umap tsne etc

  > done

- [x] DM details, maybe s.t. on implementation and scaling, extend on this since you did contribute to that, no?

  > I did, and added details about this

#### 2.1.2 Learned Embeddings
- [x] what is difference of learned embedding to say PCA? of course there is a "learning" formulation of PCA too. this differentiation you try to make up does not exist, adapt

  > I cleared up that I mean distinguishing between deterministic and nondeterministic ones.
  >
  > PCA and DM alyays come out the same, UMAPs and tSNE can be wildly different: https://mobile.twitter.com/lpachter/status/1431326001414299650

- [x] add a few nonlinear ones I guess

  > done

- [x] and again, you bloody cite scVI but not Gokcen’s DCA? why?

  > because it’s a denoising method, not embedding, but I added it anyway.

#### 2.1.3 Gene Relevance
- [x] how does this fit at all to rest, hmm. this is now your own contribution part, right

  > added context

- [x] fig 2.2 badly inlined; data not explained. question not motivated. not clear what I learn from this. this has a lot of issues, please help reader here.

  > done

- [x] something on implementation?

  > done

### 2.2 AnnData
- [x] is there publication for this? shouldn’t you for cumulative contribution chapter do this? i guess separate one, so this is method used below

  > there is now!

- [x] here you could show your AnnData topic

  > you mean figure? moved.

- [x] organization wise this is a tough break in how your write things. this reads suddenly like a package documentation. really adequate?

  > This is intentional.
  > The actual package documentation is far far more detailed, this just reuses names used in the API.
  > I think my thesis will mostly be read by people who know my work on anndata,
  > so it’s a benefit to them to make connections between how things are named in the package and math variables used in the text.

### 2.3 Scanpy
- [x] Scanpy, say s.y.a about its popularity

  > done

- [x] what’s diff to intro, like more detail here?

  > Intro describes how scRNA-Seq analysis is organized.
  > Scanpy is designed after that process.
  > This section describes that fact and goes into detail about the design philosophy and scope of scanpy.

- [x] fig 2.3 [now 2.4] → what’s the question, the data, the result? not only how but you need to motivate. remember, you submit to WZW faculty, they want to have some of this

  > Done

#### 2.3.3 Visualization
- [x] ties into diffmaps?

  > Done

### 2.4 BART-Seq
- [x] in general: need to add 1 page summaries + own contribution as extra section. please check other theses

  > done

- [x] this is brief, describes method, but does not give any result (maybe OK for this section though)
- [ ] in particular though does not tie to above
- [x] not clear how comp parts are in there, and what your contribution is.

  > added own contrib

## 3 (new) Summary of papers

> added all of them

- [x] Destiny: Diffusion maps for large-scale single cell data in R.
- [x] Single cells make big data: New challenges and opportunities in transcriptomics.
- [x] SCANPY: large-scale single cell gene expression data analysis.
- [x] BART-Seq: cost-effective massively parallelized targeted sequencing for genomics, transcriptomics, and single cell analysis
- [x] Automatic identification of relevant genes from low-dimensional embeddings of single cell RNA-Seq data

## 3 Conclusion
- [x] should be conclusion + outlook (which is what you do anyway)

  > done

- [x] please go over typos, here capitalization in first sentence

  > did multiple editor passes

- [x] often people include at least short summary

  Added

- [ ] "My contributions towards more reproducible, scalable and interconnectible scientific programming have helped these changes along." → sounds very different from what you wrote before

### 3.1 Multi-resolution scRNA-Seq Analysis
- [x] multi-res? really? don’t understand what you mean, can you define?

  > renamed to multi-scale and drawn connection to intro

- [x] multi-layer/omics add too? ah, 3.3 OK :)

### 3.3 Multi-modal Scanpy and AnnData
- [x] very good, swap with 3.2?

   > swapped

- [x] ~~Nature Method of year~~, nice! add the 2013 one to intro, though.

  > Actually genome biology, no? added that one

- [ ] extend a bit, some timeline?
- [ ] something on how community can address?

### 3.2 New Dimensions of Scanpy Scalability

- [x] VERY GOOD, this plays into your strengths.

  > thanks!

- [x] please expand a bit and give clear advice, we could all profit. draw links to professional software development?

  > added advice about structuring dev work.
