
# The Brain Emulation Challenge


## Introduction


<iframe width="560" height="315" src="https://videos.carboncopies.org/embed?m=yY1QRzTQA" frameborder="0" allowfullscreen></iframe>

---


With the availability of high throughput electron microscopy (EM), expansion microscopy (ExM), Calcium and voltage imaging, co-registered combinations of these techniques and further advancements, high resolution data sets that span multiple brain regions or entire small animal brains such as the fruit-fly Drosophila melanogaster may now offer inroads to expansive neuronal circuit analysis. Results of such analysis represent a paradigm change in the conduct of neuroscience.

So far, almost all investigations in neuroscience have relied on correlational studies, in which a modicum of insight gleaned from observational data leads to the formulation of mechanistic hypotheses, corresponding computational modeling, and predictions made using those models, so that experimental testing of the predictions offers support or modification of hypotheses. These are indirect methods for the study of a black box system of highly complex internal structure, methods that have received published critique as being unlikely to lead to a full understanding of brain function ([Jonas and Kording, 2017](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005268)).

Large scale, high resolution reconstruction of brain circuitry may instead lead to mechanistic explanations and predictions of cognitive function with meaningful descriptions of representations and their transformation along the full trajectory of stages in neural processing.
Insights that come from circuit reconstructions of this kind, a reverse engineering of cognitive processes, will lead to valuable advances in neuroprosthetic medicine, understanding of the causes and effects of neurodegenerative disease, possible implementations of similar processes in artificial intelligence, and in-silico emulations of brain function, known as whole-brain emulation (WBE).

## What is the Challenge?

Although brain data collection, especially, high-throughput collection of high-resolution morphological data, has advanced significantly in recent years, there is a dearth of published and validated attempts to use such data to reconstruct neuronal circuit function that successfully reproduces the full range of information processing for which the original sample brain tissue was responsible. Most studies of this sort were constrained to the reconstruction of single neurons and limited interactions. Recent ambitious efforts to map functional models onto a connectome identified in 3D reconstructions of EM data applied extensive abstraction and simplification with limited opportunity for functional validation. Reasons are obvious, as these are the very early days in the evolution of a science of functional system identification with translation from collected data to model parameters. And there are no structurally and functionally fully-known brains to verify and validate derived model circuits.

In the domain of artificial intelligence, for example, computer vision, a method that was used to successfully aid algorithmic improvements and to motivate comparative and competitive improvements on a level playing field was to produce standardized data sets and challenges with well-understood target performance. For example, the ImageNET data set provides more than 14 million annotated images in 20,000 categories, and the project includes an annual contest that has run since 2010, the ImageNet Large Scale Visual Recognition Challenge.

Despite many years of published experimental and computational modeling studies, in neuroscience, there are no standardized reference brains with fully understood circuit structure and functional representations. Not of human, non-human primate, rat, mouse, fruit-fly, and barely of the C.Elegans nematode.

To overcome this hurdle, we propose that a carefully crafted series of successively more sophisticated in-silico models representing virtual "ground-truth" brain tissue can be used to generate a multi-tiered training data set of "brain data" that can bootstrap towards standardized data sets and challenges in neural circuit reconstruction or brain emulation. Our collaborating teams in the BrainGenix Neural Emulation System (NES) and BrainGenix Virtual Brain Platform (VBP) groups of the Carboncopies Foundation develop and maintain this open Brain Emulation Challenge set with the aim to accelerate the rate of feedback and improvement in this nascent field.

BrainGenix NES uses an embedded and extensively enhanced version of the neuronal development simulator Netmorph ([Koene et al, Neuroinformatics, 2009](https://pubmed.ncbi.nlm.nih.gov/19672726/)) to generate virtual brain tissue. Inspecting generated EM data sets is enabled through instances of [Neuroglancer](https://github.com/google/neuroglancer).

## Challenge Series

As in every theoretical or practical experiment, strict control of experimental variables and minimization of the number of changing parameters in a given experiment can limit complexity and thereby increase the chance that an experimental protocol can elucidate individual characteristics of a natural process and lead to insights. Here, we use this principle to aid testing and improvement of analysis and translation methods.

Again, an analogous approach has been applied in the field of AI. It is common to train new computer vision or automated navigation algorithms first on highly simplified data sets, and to then gradually increase the sophistication of the data set. For example, in computer vision, the first set of images might contain only letters and numbers. The second set might contain other objects as well. The third might contain rotated versions of objects. The fourth partially occluded or noisy objects.

This challenge is presented as a series of successively more sophisticated data sets. The specific abstractions and simplifications made in
each data set is explained in an associated Challenge Level page. That page also describes any special assumptions that should be made when
interpreting the data to determine the structural and functional neuronal circuit tissue from which that data set was produced. 

## Why take the Challenge?

Why take a challenge that is providing virtual brain data from generated neural tissue?

If your system identification and reconstruction method successfully discovers the neural circuit and translates its meaningful cognitive function, which was hidden in the data your method analyzed, and about which we know everything, for which we can verify and validate exactly how well the reconstructed result performs a specific function, then we have much stronger reason to believe claims about reconstructions and discovered function from unknown biological neural tissue.

It is a way to test qualitatively and quantitatively if a proposed method can indeed discover and extract what it is meant to find, establishing trust that it is able to deliver a specific and correct working model based on collected brain data.

---

*The WBE Challenge is developed and supported by the Virtual Brain Platform (VBP) and Neural Emulation System (NES) groups of the BrainGenix division of the Carboncopies Foundation R&D. The Carboncopies Foundation (CCF) is a 501\(c)3 non-profit research and education organization. You can read more about the CCF at https://carboncopies.org, and BrainGenix at https://braingenix.org.*

For questions or comments, please write to wbechallenge@carboncopies.org.
