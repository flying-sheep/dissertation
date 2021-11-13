# Thesis Philipp Angerer comments

"Enabling technologies for visualization and analysis of single cell RNA-Seq data"

- [x] Global vs local features https://www.techtimes.com/articles/44206/20150404/marilyn-monroe-or-albert-einstein-optical-illusion-can-tell-if-you-need-glasses-or-not.htm
- [ ] vertical integration https://www.nature.com/articles/s41587-021-00895-7/figures/1

## Feedback

**summary**: good, quite some orga work to be done.

- [x] rephrase and focus needed. see 3rd, 4th, last points in own contributions:
  - [x] CRUCIAL: what is your question? you only describe the WHAT+HOW you do things, but not at all the WHY? motivation to assess relevance *totally* unclear.
  - [x] you really need to spend some time on this and exactly state what your **goal** is, **altogether** and then in **each of the 3 (or 4?) projects**, and then what is **state of the art** (without own contributions) and in particular missing and therefore what your **contribution** is (see abstract comments)
  - [x] summaries of papers and contributions to papers (check how Laleh did it)
    - [ ] first status quo, then “1.3 Geometric diffusions approach for cluster analysis and pseudo-time ordering of single cell differentiation data”, then paper summaries
- [ ] really play on your strengths, say data exploding in scRNA-Seq, hence need for good well implemented SOFTWARE, not only theory methods. this is where you excel.
- [ ] title, not sure, what are "enabling technologies". usually high-level summary term, why needed here? analysis is super broad, what type of analysis? 

## own contribs

- [x] 1.1 Workflow
  Own contribution earlier?
- [x] 1.1.5 Visualization as Analysis steps and result
  at end here you write about own contribution → as reader I am waiting very much for this, then hidden within a detail expl chap → this needs major reorganization see below
- [x] 1.2 Own Contributions
  I was hoping for this earlier
- [ ] 2 Methods
  intro missing before you dive into each topic. goal of this chap? methods, background, own contributions? reads like a random mixture to me
- [ ] 2.1.3 Gene Relevance
  how does this fit at all to rest, hmm. this is now your own contribution part, right

## Abstract
- [x] **Summary**:

  - [x] emphasize own contribution

  - [x] motivation: please think about better way how to link the topics, and ask overarching "why" questions before telling the how

  - [x] Suggestion: how about changing scope to data complexity plus size, focusing on your novelty + contribution of efficient *software* for analysis, and then Bart-seq as maybe proof-of-concept use and adaption or so.

    (i say this here for abstract, but same holds for intro, crucial to show your goals and novelty of resulting approach. would also adapt title)

- [x] would go over it once more and clean up text, eg. 3× this in a row etc

- [x] "disease and development research" unclear; maybe more explicit example?

- [x] combinatoric options - explain; also sounds as if you pitch for best practice/optimal workflow, which is *not* your goal → adapt to your contribution

- [x] you say what you do, but did not motivate why? in contrary you say there are so many analysis things, and we also did s.t.

- [x] "analysis" building blocks, OK get this; maybe really put the framework idea in center. *not* clear what you claim as your contribution - Scanpy itself? AnnData? parts in there? does not come clear. I cannot stress enough how important it is that a) you fully understand what you claim is your own contribution and b) you super clearly formulate this for reviewers. this is a persistent discussion and you absolutely need to make this crystal clear.

- [x] motivation for each tool and explanation why you need each tool is unclear.

- [x] you then super shortly describe method but not WHAT you want to do; this is crucial and really needs reworking, what is your overarching goal, then why did you dev a method (and why is it unique and why needed; these are core questions reviewer will need to answer, and you better help them with this, otherwise tough for them to say what your contrib/novelty was)

- [x] cool with bioinformatics for last one

- [x] btw, *very* good that you make a cumulative dissertation, and that you are brief

## Pub list

- [x] is this clear somewhere that this is a cumulative dissertation? add as explanation before list of pub.
  - [x] is not that way in Laleh’s thesis…
- [ ] Mention that Scanpy was the 2018 featured paper in the [20 year anniversary](https://genomebiology.biomedcentral.com/20years)
- [x] did you check that papers are OK, in particular review OK to list? you may need some signatures from others?
  - [x] Elsevier: [automatically permitted](https://www.elsevier.com/about/policies/copyright/permissions)
    - [x] Single Cells Make Big Data: https://doi.org/10.1016/j.coisb.2017.07.004
  - [x] Oxford Press: [automatically permitted](https://global.oup.com/academic/rights/permissions/autperm/)
    - [x] Destiny: https://doi.org/10.1093/bioinformatics/btv715
    - [x] Gene Relevance: https://doi.org/10.1093/bioinformatics/btaa198
  - [x] Springer Nature (BMC): [automatically permitted](https://www.springer.com/gp/rights-permissions/obtaining-permissions/882) when including “Material from: 'AUTHOR, TITLE, JOURNAL TITLE, published [YEAR], [publisher - as it appears on our copyright page]’”
    - [x] Scanpy: https://doi.org/10.1186/s13059-017-1382-0
    - [x] BART-Seq: https://doi.org/10.1186/s13059-019-1748-6

## 1 Introduction
- [ ] See summary for Abstract re: focus
- [x] "Every aspect of existence" → of OUR exist
- [x] not sure central dogma super necessary in Bioinformatics thesis, but i guess OK
- [ ] add some viz for HCA? even just overview of state from web page or review?
- [x] text on examples etc good → please be CAREFUL that you don't do copy&paste from own papers and reviews *without* citation.
- [ ] add a subsection
- [ ] say e.g. something on analysis or so
- [ ] but: first a section on single cell biology or so?

### 1.1 Workflow
- [x] workflow for what?
- [x] Viz before analysis?
- [x] Own contribution earlier?

#### 1.1.1 Lib prep and sequencing
- fig 1.2: pretty!
  - [x] maybe unclear that you describe a process from top to bottom, with text being next step.
  - [x] caption UNCLEAR. library prep in general? for scRNA-Seq?
  - [x] in fig unclear where within cell
  - [x] dude, how about amplification? molecular barcodes, UMIs? far too much missing
  - [x] fix up caption

#### 1.1.2 Counting
- [x] counting of what

#### 1.1.3 Preprocessing
- [x] preprocessing of counts? batch etc?
- [ ] a figure for everything after count matrix may be nice?

#### 1.1.4 Analysis (of cellular dynamics, heterogeneity and gene roles)
- [x] analysis of what: of cellular dynamics, heterogeneity and gene roles
- [ ] here would really make clear what pot. questions could be, then enumerate analysis parts
- [x] fig 1.4 (cell fates) somewhat nice, but give legend for arrows, add some references and say these things are artificial mostly. but: this is out of place in analysis, this should be in motivating bio questions in the single cell bio part in beginning, no? you'd need a fig for analysis etc

#### 1.1.5 Visualization (as Analysis steps and result)
- [x] really viz AFTER analysis? often first step
- [x] at end here you *write about own contribution* → as reader I am waiting very much for this, then hidden within a detail expl chap → this needs major reorganization see below

#### 1.1.6 Custom-built pipelines
- [x] custom build vs what? don’t get this
- [x] is this about frameworks? scripts?

#### 1.1.7 Frameworks
- [x] framework for scRNA-Seq analysis i guess (title of the overall sec is workflow hmm)
- [x] for whole section above
  - [x] you need to end with open challenges in the field that you will address
  - [x] altogether intro very short and in particular misses biol big questions and then question you can address
    - Large cell numbers (Microfluidics) couldn’t be processed by old pipelines
    - Reproducibility
    - Few/bad embedding tools
- [x] also don’t get link here to rest
- [x] good to point out, may add citations. clear why they are needed etc?
- [x] the AnnData tech fig in intro, dude? why?
- [x] again Bioconductor?
- [x] very disorganized, super unclear

### 1.2 Own Contributions
- [x] I was hoping for this earlier, in particular because it was intertwined in above a bit already
- [x] motivation missing though
- [x] CRUCIAL: what is your question? you only describe the WHAT+HOW you do things, but not at all the WHY? motivation to assess relevance *totally* unclear. even worse, in 2nd sentence you say, oh btw., i also analyzed sizes of data sets. this is the core thing of your 4year phd work? 
- [x] you really need to spend some time on this and exactly state what your goal is, altogether and then in each of the 3 (or 4?) projects, and then what is state of the art and in particular missing (above you described SOTA already INCLUDING your contributions) and therefore what your contribution is (see abstract comments)
- [ ] also tie things together. why the BART-seq? because you had tools to show all this and can use as proof of concept
- [ ] often (check other theses) students also shortly write about/summarize other projects they contributed to but do not put into thesis, this is useful and I would recommend this. just looked at rules again from WZW, here you miss points 4 and 5 - 1 page summary for each paper with particular highlighting of your contrib, and 5 inclusion of those papers etc. see WZW
  - [ ] this needs quite some additional work, and I kindly ask you to go over this with Carsten first and then give me short answer to points done ok? thanks!
- [x] I though the cumulative thesis also needs contribution to papers and your own contributions. should this be here in intro already? usually separate chapter (e.g. with Laleh). please please please by all means look at other theses and talk with currently finished PhDs, OK? thanks!

## 2 Methods
- [x] intro missing before you dive into each topic. goal of this chap? methods, background, own contributions? reads like a random mixture to me
- [ ] also if this is methods, where is the results chapter?
- [ ] maybe give some example or data set to visualize? imagine you presented this as a talk → this would never work to just directly talk about dim red, diff map etc without illustrating a big data set and what you'd look for in that.

### 2.1 Dimensionality Reduction
#### Spectral Decomposition
##### 2.1.1.1
- [x] SVD not defined (U,S,V)
- [x] when talking about extensions of that in our field, please *by all means* cite our own things at least. I expect you to know these and will ask. e.g. Buettner GLM with missing values etc

##### 2.1.1.2
- [ ] PCA then DM does not work. would make point more on linear and nonlinear red methods, then show umap tsne etc
- [ ] DM details, maybe s.t. on implementation and scaling, extend on this since you did contribute to that, no?

#### 2.1.2 Learned Embeddings
- [x] what is difference of learned embedding to say PCA? of course there is a "learning" formulation of PCA too. this differentiation you try to make up does not exist, adapt
  - [x] → distinguish between deterministic and nondeterministic ones
- [ ] add a few nonlinear ones I guess
- [x] and again, you bloody cite scVI but not Gokcen's DCA? why?
  - [x] because it’s a denoising method, not embedding, but I added it anyway.

#### 2.1.3 Gene Relevance
- [x] how does this fit at all to rest, hmm. this is now your own contribution part, right 
- [ ] fig 2.2 badly inlined; data not explained. question not motivated. not clear what I learn from this. this has a lot of issues, please help reader here.
- [ ] something on implementation?

### 2.2 AnnData
- [ ] is there publication for this? shouldn’t you for cumulative contribution chapter do this? i guess separate one, so this is method used below
- [ ] here you could show your AnnData topic
- [ ] organization wise this is a tough break in how your write things. this reads suddenly like a package documentation. really adequate?

### 2.3 Scanpy
- [ ] Scanpy, say s.y.a about its popularity
- [ ] what's diff to intro, like more detail here?
- [ ] fig 2.3 → what's the question, the data, the result? not only how but you need to motivate. remember, you submit to WZW faculty, they want to have some of this

#### 2.3.3 Visualization
- [ ] ties into diffmaps?

### 2.4 BART-Seq
- [x] in general: need to add 1 page summaries + own contribution as extra section. please check other theses
- [ ] this is brief, describes method, but does not give any result (maybe OK for this section though)
- [x] in particular though does not tie to above; and not clear how comp parts are in there, and what your contribution is.

## 3 (new) Summary of papers

- [x] Destiny: Diffusion maps for large-scale single cell data in R.
- [x] Single cells make big data: New challenges and opportunities in transcriptomics.
- [x] SCANPY: large-scale single cell gene expression data analysis.
- [x] BART-Seq: cost-effective massively parallelized targeted sequencing for genomics, transcriptomics, and single cell analysis
- [x] Automatic identification of relevant genes from low-dimensional embeddings of single cell RNA-Seq data

## 3 Conclusion
- [x] should be conclusion + outlook (which is what you do anyway)
- [x] please go over typos, here capitalization in first sentence
- [ ] often people include a least short summary
- [ ] "My contributions towards more reproducible, scalable and inter-connectible scientific programming have helped these changes along." → sounds very different from what you wrote before

### 3.1 Multi-resolution scRNA-Seq Analysis
- [ ] multi-res? really? don't understand what you mean, can you define?
- [x] multi-layer/omics add too? ah, 3.3 OK :)

### 3.3 Multi-modal Scanpy and AnnData
- [x] very good, swap with 3.2?
- [x] Nature Method of year, nice! add the 2013 one to intro, though.
- [ ] extend a bit, some timeline?
- [ ] something on how community can address?

### 3.2 New Dimensions of Scanpy Scalability

- [x] VERY GOOD, this plays into your strengths.
- [ ] please expand a bit and give clear advice, we could all profit. draw links to professional software development?