# Thesis Philipp Angerer comments

"Enabling technologies for visualization and analysis of single cell RNA-Seq data"

**summary**: good, quite some orga work to be done.

- [ ] rephrase and focus needed. see 3rd, 4th, last points in own contributions:
  - [ ] CRUCIAL: what is your question? you only describe the WHAT+HOW you do things, but not at all the WHY? motivation to assess relevance *totally* unclear.
  - [ ] you really need to spend some time on this and exactly state what your **goal** is, **altogether** and then in **each of the 3 (or 4?) projects**, and then what is **state of the art** (without own contributions) and in particular missing and therefore what your **contrib** is (see abstract comments)
  - [ ] summaries of papers and contributions to papers (check how Laleh did it)
    - [ ] first status quo, then “1.3 Geometric diffusions approach for cluster analysis and pseudotime ordering of single-cell differentiation data”, then paper summaries
- [ ] really play on your strengths, say data exploding in scRANseq, hence need for good well implemented SOFTWARE, not only theory methods. this is where you excel.
- [ ] title, not sure, what are "enabling technologies". usually high-level summary term, why needed here? analysis is super broad, what type of analysis? 

## Abstract
- [x] **Summary**:

  - [x] emphasize own contrib

  - [x] motivation: please think about better way how to link the topics, and ask overarching "why" questions before telling the how

  - [x] Suggestion: how about changing scope to data complexity plus size, focusing on your novelty + contrib of efficient *software* for analysis, and then Bart-seq as maybe proof-of-concept use and adaption or so.

    (i say this here for abstract, but same holds for intro, crucial to show your goals and novelty of resulting approach. would also adapt title)

- [x] would go over it once more and clean up text, eg. 3x this in a row etc

- [x] "disease and development research" unclear; maybe more explicit example?

- [x] combinatoric options - explain; also sounds as if you pitch for best practice/optimal workflow, which is *not* your goal -> adapt to your contrib

- [x] you say what you do, but did not motivate why? in contrary you say there are so many analysis things, and we also did s.t....

- [x] "analysis" building blocks, ok get this; maybe really put the framework idea in center. *not* clear what you claim as your contribution - scanpy itself? anndata? parts in there? does not come clear. I cannot stress enough how important it is that a) you fully understand what you claim is your own contribution and b) you super clearly formulate this for reviewers. this is a persistent discussion and you absolutely need to make this crystal clear.

- [x] motivation for each tool and explanation why you need each tool is unclear.

- [x] you then super shortly describe method but not WHAT you want to do; this is crucial and really needs reworking, what is your overarching goal, then why did you dev a method (and why is it unique and why needed; these are core questions reviewer will need to answer, and you better help them with this, otherwise tough for them to say what your contrib/novelty was)

- [x] cool with bioinf for last one

- [x] btw, *very* good that you make a cumulative dissertation, and that you are brief

## Pub list

- [x] is this clear somewhere that this is a cumulative dissertation? add as explamnation before list of pub.
  - [ ] is not that way in laleh’s thesis…
- [ ] Mention that scanpy was the 2018 featured paper in the 
- [ ] did you check that papers are ok, in particular review ok to list? you may need some signatures from others?
  - [ ] Elsevier:
    - [ ] Single Cells Make Big Data: https://doi.org/10.1016/j.coisb.2017.07.004
  - [ ] Oxford Press:
    - [ ] Destiny: https://doi.org/10.1093/bioinformatics/btv715
    - [ ] Gene Relevance: https://doi.org/10.1093/bioinformatics/btaa198
  - [ ] Springer Nature (BMC):
    - [ ] Scanpy: https://doi.org/10.1186/s13059-017-1382-0
    - [ ] BART-Seq: https://doi.org/10.1186/s13059-019-1748-6

## 1 Introduction
- [ ] See summary for Abstract re: focus
- [ ] "Every aspect of existence" -> of OUR exist
- [ ] not sure central dogma super necessary in BIOinf thesis, but i guess ok
- [ ] add some viz for HCA? even just overview of state from webpage or rview?
- [x] text on examples etc good -> please be CAREFUL that you don't do copy&paste from own papers and reviews *without* citation.
- [ ] add a subsec
- [ ] say eg. something on analysis or so
- [ ] but: first a section on single cell bio or so?

### 1.1 Workflow
- [ ] workflow for what?
- [ ] Viz before analysis? Own contrib earlier?

#### 1.1.1 Lib prep and sequencing
- [ ] fig 1.2 pretty, maybe unclear that you describe a process from top to bottom, with text being next step. caption however UNCLEAR. library prep in general? for scRNA-seq? also in fig unclear where within cell. dude, how about amplification? molecluar barcodes, UMIs? far too much missing

#### 1.1.2 Counting
- [ ] counting of what

#### 1.1.3 Preprocessing
- [ ] preproc of counts? batch etc?
- [ ] a figure for eveything after count matrix may be nice?

#### 1.1.4 Analysis
- [ ] analysis of what
- [ ] here would really make clear what pot questions could be, then enumerate analysis parts
- [ ] fig 1.4 somewhat nice, but give legend for arrows, add some refernces and say these things are artificial mostly. but: this is out of place in analysis, this should be in motivating bio questions in the single cell bio part in beginning, no? you'd need a fig for analysis etc

#### 1.1.5 Visualization
- [ ] really viz AFTER anaylsis? often first step
- [ ] at end here you *write about own contrib* -> as reader I am waiting very much for this, then hidden within a detail expl chap -> this needs major reorganization see below

#### 1.1.6 Custom-built pipelines
- [ ] custom build vs what? dont get this
- [ ] is this about frameworks? scripts?

#### 1.1.7 Frameworks
- [ ] framework for scrnaseq analysis i guess (title of the overall sec is workflow hm)
- [ ] for whole section above
  - [ ] you need to end with open challenges in the field that you will address
  - [ ] altogether intro very short and in particular misses biol big questions and then question you can address
- [ ] also dont get link here to rest
- [ ] good to point out, may add citations. clear why they are needed etc?
- [ ] the anndata tech fig in intro, dude? why?
- [ ] again bioconductor?
- [ ] very disorganized, super unclear

### 1.2 Own Contributions
- [ ] I was hoping for this earlier, in particular bec it was intertwined in above a bit already
- [ ] motivation missing though
- [ ] CRUCIAL: what is your question? you only describe the WHAT+HOW you do things, but not at all the WHY? motivation to assess relevance *totally* unclear. even worse, in 2nd sentence you say, oh btw, i also analyzed sizes of data sets. this is the core thing of your 4year phd work? 
- [ ] you really need to spend some time on this and exactly state what your goal is, altogether and then in each of the 3 (or 4?) projects, and then what is state of the art and in particular missing (above you described SOTA already INCLUDING your contributions) and therefore what your contrib is (see abstract comments)
- [ ] also tie things together. why the bar-seq? bec you had tools to show all this and can use as PoC
- [ ] often (check other theses) students also shortly write about/summarize other projects they contributed to but do not put into thesis, this is useful and I would recommend this. just looked at rules again from WZW, here you miss points 4 and 5 - 1page summary for each paper with particular highlighting of your contrib, and 5 inclusion of those papers etc. see WZW
  - [ ] this needs quite some additional work, and I kindly ask you to go over this with Carsten first and then give me short answer to points done ok? thx!
- [ ] I though the cumulative thesis also needs contrib to papers and your own contribs. should this be here in intro already? usually separate chapter (eg with Laleh). please please please by all means look at other theses and talk with currently finished phds ok? thx!

## 2 Methods
- [ ] intro missing before you dive into each topic. goal of this chap? methods, background, own contributions? reads like a random mixture to me
- [ ] also if this is methods, where is the results chapter?
- [ ] maybe give some example or data set to visualize? imagine you presented this as a talk -> this would never work to just directly talk about dim red, diff map etc without illustrating a big data set and what you'd look for in that.

### 2.1 Dimensionality Reduction
#### Spectral Decompposition
##### 2.1.1.1
- [ ] SVD not defined (U,S,V)
- [ ] when talking about extensions of that in our field, please *by all means* cite our own things at least. I expect you to know these and will ask. eg. Buettner GLM with missing values etc

##### 2.1.1.2
- [ ] PCA then DM does not work. would make point more on linear and nonlinear red methods, then show umap tsne etc
- [ ] DM details, maybe s.t. on implementation and scaling, extend on this since you did contribute to that, no?

#### 2.1.2 Learned Embeddings
- [ ] what is difference of learnt embedding to say PCA? of course there is a "learning" formulation of PCA too. this differntiation you try to make up does not exist, adapt
- [ ] add a few nonlinear ones I guess
- [ ] and again, you bloody cite scVI but not Gokcen's DCA? why?

#### 2.1.3 Gene Relevance
- [ ] how does this fit at all to rest, hm. this is now your own contrib part, right 
- [ ] fig 2.2 badly inlined; data not explained. question not motivated. not clear what I learn from this. this has a lot of issues, please help reader here.
- [ ] s..t on implementation?

### 2.2 AnnData
- [ ] is there publication for this? shouldnt you for cumulative contrib chapter do this? i guess separte one, so this is method used below
- [ ] here you could show your anndata topic
- [ ] organization wise this is a tough break in how your write things. this reads suddenly like a package documentation. really adequate?

### 2.3 Scanpy
- [ ] scanpy, say s.y.a about its popularity
- [ ] what's diff to intro, like more detail here?
- [ ] fig 2.3 -> what's the question, the data, the result? not only how but you need to motivate. remember, you submit to WZW faculty, they want to have some of this

#### 2.3.3 Visualization
- [ ] ties into diffmaps?

### 2.4 BART-Seq
- [ ] in general: need to add 1page summaries + own contrib as extra section. plz check other theses
- [ ] this is brief, describes method, but does not give any result (maybe ok for this section though)
- [ ] in particular though does not tie to above; and not clear how comp parts are in there, and what your contrib is.

## 3 Conclusion
- [ ] should be concl + outlook (which is what you do anyway)
- [ ] please go over typos, here capitalization in first sentence
- [ ] often people include a least short summary
- [ ] "My contributions towards more reproducible, scalable and interconnectible scientific programming have helped these changes along." -> sounds very differnt from what you wrote before

### 3.1 Multiresolution scRNA-Seq Analysis
- [ ] multi-rez? really? don't understand what you mean, can you define?
- [ ] multi-layer/omics add too? ah, 3.3 ok :)

### 3.2 New Dimensions of scanpy Scalability
- [ ] VERY GOOD, this plays into your strengths. please expand a bit and give clear adivce, we could all profit. draw links to professional softw developement?

### 3.3 Multimodal Scanpy and AnnData
- [ ] very good, swap with 3.2?
- [ ] Nat Meth of year, nice! add the 2013 one to intro, though.
- [ ] extend a bit, some timeline?
- [ ] something on how community can address?
