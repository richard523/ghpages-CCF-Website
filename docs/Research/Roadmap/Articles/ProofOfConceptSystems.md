# Proof-of-Concept Systems

## Model Organisms for Whole-Brain Emulation

_By Logan Thrasher Collins_

### Summary

To reach the point where human whole-brain emulation (WBE) is feasible, smaller model organisms will act as crucial stepping stones. Though the path may not occur with complete linearity, a reasonably straightforward progression from lower levels of complexity to higher levels of complexity will probably take place. As each model organism WBE is refined, new lessons will emerge to inform subsequent work towards emulating more complex organisms. These lessons will provide an important foundation for eventual attempts at human WBE as well as act as milestones to encourage the wider scientific community to continue devoting resources towards emulation-adjacent computational neuroscience. Here, we will explore existing, emerging, and potential future work on model organisms for WBE.

<!-- COPY FROM PAPER / SECTION GLUE TO ADD:
<table><tbody>
<tr>
<td>High Impact Challenges</td>
<td>...</td>
</tr>
<tr>
<td>Well Attended, Progress Drivers In Place</td>
<td>...</td>
</tr>
</tbody></table>
-->

### Caenorhabditis elegans (nematode worm):

As the first crude synapse-level connectome of the 302 neurons of Caenorhabditis elegans (or C. elegans) was originally mapped in 1986, WBE of this nematode has represented a longstanding goal of adventurous computational neuroscientists [1]–[4]. The first major attempt at C. elegans WBE came in the form of the OpenWorm project [3], an effort launched in 2011. OpenWorm leverages a distributed open science approach for reverse engineering C. elegans, creating public datasets and software tools to encourage additional researchers and software engineers from interdisciplinary backgrounds to contribute to the project. OpenWorm has split their effort into multiple interlinked subprojects including PyOpenWorm, ChannelWorm, and others. These subprojects are integrated into a “simulation stack” wherein different parts exist at distinct levels of abstraction ranging from ion channels and connectivity all the way up to the full simulation of body movement and the environment. 

PyOpenWorm is a software system which standardizes various types of multiscale C. elegans data and compiles them into a queryable database [3]. Data included in PyOpenWorm include names of neurons and muscles, neuron types, cell descriptions, lineage names, neurotransmitters, neuropeptides, receptors, innexins (homologs of connexins), monoamine secretors and receptors, neuropeptide secretors and receptors, and neuron to neuron and neuron to muscle chemical synapses and gap junctions. ChannelWorm is another module within OpenWorm’s framework, one which centers on building Hodgkin-Huxley models of neurons using ion channel data [3]. Because patch-clamp data are unavailable for most of the C. elegans ion channels, ChannelWorm has embarked on a strategy of leveraging data on homologous ion channels from other organisms. This strategy requires both manual curation of electrophysiological plots and optimization of kinetic parameters using genetic algorithms and particle swarm optimization. OpenWorm furthermore performs extensive model validation tests to ensure that its results mirror biological reality across scales [3]. Finally, the project has explored development of visualization tools and communication of its science to the public.

OpenWorm has encountered obstacles along the path to producing faithful emulations of C. elegans, which has led to recognition that new approaches may be necessary. As a result, a coalition of researchers led by Professors Ed Boyden and Konrad Kording have proposed a new large-scale project for comprehensively reverse engineering C. elegans, playfully dubbed “The Worminator Project” [4]. In their proposal, they noted that OpenWorm’s shortcomings likely arise from insufficient data which prevents proper identification of biophysical parameters. As mentioned previously, OpenWorm has derived much of its data from borrowing parameters of homologous ion channels and manually and algorithmically optimizing said parameters, an approach prone to possible errors. 

By contrast, The Worminator Project aims to perform a massive high-throughput data collection process on C. elegans specimens, leveraging recent advances in data management, microscopy, optophysiology, and experimental automation [4]. The goal of this data acquisition effort is to obtain parameters to construct highly accurate I/O functions for all neurons, glia, and neuromuscular interactions. The Worminator Project will carry out voltage imaging of neuronal activity in tens of thousands of C. elegans specimens while performing combinatorial arrays of perturbations on the neurons using optogenetic methods (Figure 1). These perturbations will induce various neuronal activity patterns which will be recorded and leveraged to fit I/O models to each constituent of the worm. By automating much of this process, The Worminator Project hopes to both acquire an enormous volume of data and to transform these data into neuronal and neuromuscular models that match ground truth sufficiently well to create a whole-worm emulation, accurately recapitulating the animal’s behavior in silico. 

<img src="https://gitlab.braingenix.org/wberoadmap/wbe-roadmap-website/-/raw/main/Article-Model-Systems_worm-figure.png?ref_type=heads" widh="40%">

**Figure 1** General outline of the strategy of The Worminator Project, which will leverage a highly systematic approach of optogenetic perturbation and whole-animal recording to generate enough data to construct I/O functions for all neurons (and neuromuscular connections) in C. elegans. In this way, The Worminator Project hopes to create biologically accurate emulations of C. elegans that recapitulate behavior in silico.

### Megaphragma viggianii (parasitoid wasp)

The parasitoid wasp Megaphragma viggianii has received increasing interest from the neuroscience community as a model organism since it shows complex behaviors despite its very small size. Megaphragma wasps are about 200 µm in length, smaller than some amoebas [5]. The brain of an adult Megaphragma viggianii contains about 8600 total cells, but 97% of them are anucleated (only around 300 have a nucleus), having lysed their nuclei during development [6]. Remarkably, most Megaphragma neurons also seem to lack endoplasmic reticulum and Golgi apparatus. 

Because of its extremely diminutive brain, connectomics efforts for Megaphragma viggianii have already yielded fruit in the form of a wiring diagram for the wasp’s early visual system [7]. Chua et al. traced and analyzed the cells of the Megaphragma viggianii early visual system, including the ommatidia morphologies and the connectome of the lamina. They found putative optical and neural circuit mechanisms for how the wasp may detect polarized light and how the wasp may measure ambient light levels. Chua et al. state that their data could serve as the basis for future computational models of the wasp’s neural circuitry. Furthermore, a poster at the Society for Neuroscience Conference indicates that Dmitri Chlovski and colleagues have fully traced a Megaphragma viggianii connectome and are engaged in an ongoing proofreading effort (this is the same group responsible for the early visual system analysis paper) [8]. We see a bright future ahead for the Megaphragma viggianii wasp as a useful model system for WBE since its tiny size makes it uniquely tractable for efficient and detailed experimental interrogation. However, we emphasize that developing new genetic tools for Megaphragma will be necessary to elucidate the molecular side of its brain’s function.

**Drosophila melanogaster (fruit fly):**

Advances in electron microscopy (EM) and computational tracing have paved the way for reconstruction of the Drosophila melanogaster (fruit fly) connectome [9]. As of the writing of this report, larval female Drosophila brain and ventral nerve cord connectome [10], adult female Drosophila brain connectome,[11] adult male Drosophila ventral nerve cord connectome [12], and adult female Drosophila ventral nerve cord connectome [13] have been successfully reconstructed (Figure 2) using volume EM imaging and semiautomated computational segmentation methods. While additional proofreading may be necessary in some of the volumes, these connectomes have already yielded numerous insights in Drosophila neuroscience [14]–[17]. Because of the momentum in the Drosophila field, WBE of the fly has received increasing interest [18]. It will also be important to integrate such WBEs of Drosophila into a virtual body and environment so that recapitulation of behavior can be tested.

Of particular note for WBE goals, Shiu et al.  created and analyzed a leaky integrate-and-fire model of the entire adult Drosophila brain connectome [19]. Only neuronal connectivity and neurotransmitter identity were considered in this model. Despite its highly simplified neuronal representations, the model accurately predicted behavioral responses to various forms of sensory stimulation. In their model, Shiu et al. activated gustatory receptor neuron inputs to simulate taste sensations of sugar, water, bitter, and low salt. These inputs triggered downstream neuronal activity patterns which would cause appropriate proboscis movements in a real fly. Shiu et al. also carried out an independent test in which computational activation of mechanosensory neurons led to activity in an antennal grooming circuit, also matching what would occur in a biological fly. The authors used optogenetics and behavioral experiments in actual flies to show that their predictions matched biological reality. These results are highly encouraging for future WBE efforts since they indicate that even simplified models of brains may reproduce computations with a fair degree of biological accuracy. 

Despite Shiu et al.’s accurate predictions for two selected neural circuits in Drosophila, we suggest it is unlikely that leaky integrate-and-fire models alone will be sufficient for WBE since there exist a vast array of additional points of regulation which could expand the possibility space of brain activity. We therefore still recommend using neuronal simulations with at least the degree of detail offered by multicompartmental Hodgkin-Huxley models (including modifications for dendritic nonlinearities like NMDA spikes and calcium spikes). Accounting for effects from other factors like neuroplasticity, extrasynaptic neuromodulators, glia, adult neurogenesis, intercellular transport of RNAs [20], perineuronal nets [21], neurovascular coupling [22], ephaptic coupling [23], and more will remain important.

<img src="https://gitlab.braingenix.org/wberoadmap/wbe-roadmap-website/-/raw/main/Article-Model-Systems_fly-figure.png?ref_type=heads" widh="40%">
 
**Figure 2** Connectomes of the Drosophila melanogaster adult female brain [11], adult male ventral nerve cord [12], and adult female ventral nerve cord [13] have been reconstructed. Additionally, a connectome of the Drosophila larval female brain (not shown) has been reconstructed [10]. Drosophila connectomes are already showing utility in computational neuroscience modeling [19], [24] and will likely act as a foundation for future efforts towards WBE of the fly.

### Apis mellifera and Bombus terrestris (bees):

Although the honeybee Apis mellifera and the bumblebee Bombus terrestris have not yet received much attention in the context of WBE, they possess spectacular cognitive abilities despite their tiny brains [18], [25]. (Apis mellifera in particular only has about 1×106 neurons). Volume electron microscopy of bee brains is within existing technological capabilities [26] and light-sheet fluorescence expansion microscopy may soon catch up as well [27], [28]. While there now exist relatively few genetic tools for studying bees, it should be possible to expand this toolbox with modern synthetic biology and sufficient funding. Due to their relatively small size, WBE of bees should also be computationally tractable with existing technology [18]. We thus argue that Apis mellifera and Bombus terrestris deserve more interest as model organisms for WBE. 

Bees have impressive learning and memory capabilities [18], [25], can experience emotions such as optimism [29], show playfulness [30], perform basic numerical arithmetic (addition and subtraction) [31], and understand the concept of zero [32]. Bombus terrestris have been shown to socially learn how to solve difficult puzzles through observation of other bumblebees who were trained by humans to solve the puzzles [33]. Apis mellifera use their unique “waggle dance” as a mode of spatial communication [34]. The waggle dance encodes distance, direction, qualitative aspects, and quantitative aspects of goals like finding specific flowers for collecting nectar [25]. Finally, bees have demonstrated incredible architectural skills in their comb building. They construct complex comb structures and can modify their plans in the face of evolutionarily novel obstacles like slippery glass barriers [35], providing evidence for the idea that bees can show creativity. As bees display highly complex cognition and behavior, they may teach us numerous valuable lessons if leveraged as model organisms for WBE.

### Danio rerio (zebrafish):

Another important model organism for neuroscience, the larval zebrafish is a strong contender as a potential early model system for WBE. Many genetic tools exist for zebrafish exist [36], [37] and there are also methodologies available for whole-brain imaging of neuronal activity in living larval zebrafish specimens [38], [39]. Indeed, the translucency of larval zebrafish allows access for imaging the activity of every neuron in its brain. As a vertebrate, zebrafish brains possess much greater homology with mammalian brains relative to the brains of invertebrate model organisms [40]. Zebrafish furthermore exhibit a high degree of brain architecture stereotypy across distinct specimens, making it easier to integrate data from different individuals into standard atlases [41]. Whole-brain 3D electron microscopy volumes from larval zebrafish have already been acquired, though only parts of these volumes have so far been traced [42], [43]. A combination of zebrafish connectomics with live activity imaging could in the near future enable a zebrafish version of the rigorous C. elegans “Worminator Project”. These properties make larval zebrafish an excellent choice for further investigation as a WBE model system.

<img src="https://gitlab.braingenix.org/wberoadmap/wbe-roadmap-website/-/raw/main/Article-Model-Systems_zebrafish-figure.png?ref_type=heads" widh="40%">

**Figure 3** Example of a light-sheet fluorescence microscopy setup for rapid imaging of a larval zebrafish’s whole brain activity through calcium or voltage recording. While the classical setup immobilizes the living fish in an agarose column [44], a newer design leverages control systems theory and a motorized stage to cancel movements, enabling whole-brain recording in freely behaving fish [45].

### Suncus etruscus (Etruscan shrew):

Etruscan shrews are one of the smallest of mammals and thus offer unique opportunities for WBE [46]–[48]. An adult Etruscan shrew brain has a volume of about 80 mm3, much larger than the brains of insects and larval zebrafish, yet around 6 times smaller than the brain of a mouse [27]. When considering the time and resource-intensive nature of connectomics [27], [49], this factor of 6 could make a large difference. Mapping the Etruscan shrew brain might serve as a useful test case precursor to a full mouse brain connectome project. It might be performed entirely before starting work on the mouse brain connectome or be performed with a degree of overlap. Either way, such a shrew project may validate key feasibilities for mammalian connectomics and help establish large-scale imaging and segmentation pipelines. 

Another benefit of the shrew’s physiology is that the full extent of its 0.4-0.5 mm thickness cortex can be imaged in living specimens using 2-photon microscopy, facilitating recording of complex cortical computations [46]. This cortical voltage imaging and/or calcium imaging data may prove crucial for translating from connectome structure to function. However, if improved technologies do not allow access to recording from the deeper brain regions, WBE of the shrew will likely necessitate major computational advances to translate from neuronal structure to function with incomplete electrophysiological data. In some ways, a push in this direction may ultimately be advantageous since simultaneous recording of in situ electrophysiology data from all neurons of mouse, monkey, or human brains is unlikely to be possible. As such, the shrew brain may serve as a transition point for WBE models which drives development of new innovations towards deriving accurate neurophysiological properties from partial data.

### Mus musculus (mouse):

In an ambitious 2020 perspective paper entitled “The Mind of a Mouse” from a consortium of distinguished authors, Abbott et al. formally suggested the idea that mapping the mouse connectome is a goal worthy of its necessary massive degree of collaborative effort [50]. This demonstrates that the wider neuroscience community has started to seriously consider a mouse connectome as a worthwhile near-future goal. While consideration of leveraging a mouse connectome towards mammalian WBE remains less publicly discussed, Abbott et al. do mention that mouse connectomics may have applications in developing biomimetic artificial intelligence systems. In general, this development points to the increasing feasibility of bringing together enough talent and resources to take substantial steps towards eventual mouse WBE.

As one of the most commonly used model organisms across all branches of the biological sciences, achieving WBE of the mouse Mus musculus would clearly represent a major steppingstone towards the eventual goal of human WBE. An enormous infrastructure exists for mouse research, providing numerous strains, genetic tools, and imaging tools as well as a wealth of knowledge on mouse behavioral neuroscience [51]–[54]. Having access to such tools may facilitate detailed investigation of the in vivo neuronal dynamics (prior to sacrifice) of the chosen mouse who provides the first full murine connectome. These data might provide important information to later help bridge from structure to function.

As with the Etruscan shrew, we suggest it is unlikely that the technology to simultaneously record from every neuron in the mouse brain in vivo will be developed anytime soon. Because of this, advances in structure-based prediction (perhaps supplemented by molecular labeling in the case of expansion microscopy connectomics [28]) of neurophysiological characteristics will be crucial for converting a static mouse connectome into a sufficiently accurate dynamic WBE system. 

Recapitulating the behavior of an entire mouse in silico would represent a massive accomplishment that may conceivably convince the scientific community that WBE is an objective worth pursuing. As such, this achievement would have real possibility of eventually galvanizing the tremendous efforts necessary for human WBE. Although mouse WBE may be a more distant goal than emulation of smaller model organisms like the nematode or the fruit fly, we argue that it is important to now begin laying the foundations to move towards this difficult objective.

<img src="https://gitlab.braingenix.org/wberoadmap/wbe-roadmap-website/-/raw/main/Article-Model-Systems_mouse-figure.png?ref_type=heads" widh="40%">
 
**Figure 4** With a volume of around 500 mm3, the mouse brain connectome will represent a substantial challenge to obtain [27]. Furthermore, the thickness of the murine brain likely will preclude simultaneous in vivo recording from all neurons. For this reason, translation of morphological structure to neurophysiological function will be a major priority for mouse WBE.

### Rattus norvegicus (rat):

With a brain volume of around 1765 mm3, rat WBE will represent a further step up in difficulty due to the time and resources needed to acquire its larger connectome and obtain additional necessary data (electrophysiological properties of each neuron, neuromodulator signaling networks, etc.) to accurately recapitulate behavior [55], [56]. Rats do offer more humanlike neurological characteristics compared to mice and therefore have greatly influenced the study of mental health and illness [57]. Rats have particularly offered contributions to studying the neurobiology and treatment of addiction, social behavior, impulsive behavior, and psychiatric ailments. But as a model organism for WBE specifically, rats may or may not offer sufficient advantages to justify large investment. We do encourage the possibility of clinical applications driving development of an in silico rat WBE platform for psychiatric studies. However, this may represent more of an application of WBE than a fundamental advance in its technical advancement. Additionally, we should note that there might be significant ethical implications to consider around using a potentially sentient mammalian WBE for these experiments. These implications should be examined thoroughly before proceeding with such a platform.

### Callithrix jacchus (marmoset):

Marmosets are a relatively small type of monkey with an approximate brain volume of 8 cm3 (8,000 mm3). They display an accelerated developmental trajectory, reaching sexual maturity after about 18 months and showing substantial signs of old age by 6-8 years [58]. Nonetheless, marmosets feature a number of remarkable similarities to humans. They live in small familial social groups, rear offspring via cooperation among mothers and fathers, and show social monogamy in their romantic relationships [58], [59]. Marmosets also possess a high proclivity for vocal communication (unlike macaques), which offers another similarity with humans [59], [60]. There are a number of genetic and viral vector tools already available for studying marmoset neurobiology [61]. That said, WBE of marmosets is unlikely to happen in the relatively near future, so a great deal of parallel advances will probably occur between now and the era of the in silico marmoset. Based on our current understanding, marmosets will likely represent an excellent choice for primate WBE. Yet depending on what technological advances happen over the next 50 or more years, distinct directions may still reveal themselves as well.

<img src="https://gitlab.braingenix.org/wberoadmap/wbe-roadmap-website/-/raw/main/Article-Model-Systems_marmoset-figure-_updated_.png?ref_type=heads" widh="40%">
 
**Figure 5** Marmosets may serve as an excellent nonhuman primate model for WBE since they are relatively small and easy to handle, yet they still display humanlike social behaviors [59].

### Macaca mulatta and Macaca fascicularis (macaques):

Macaques are another commonly used nonhuman primate model for neuroscience They are larger than marmosets and possess a closer evolutionary relationship to humans [59]. Yet because of their humanlike visual systems, macaques have shown high utility in aiding development of visual prostheses for the blind [62]. Macaques have also been successfully leveraged for studies of movement recovery after stroke due to their motor system similarities to humans. As with marmosets, there are already plenty of genetic tools for studying macaques [63]. Macaques display strong active decision making capabilities, particularly during social encounters [59]. All this said, the macaque brain does have a much larger volume than that of the marmoset, so efforts towards macaque WBE may involve greater difficulty. Indeed, the average macaque brain has a volume of about 100 cm3 (100,000 mm3). The macaque’s size, relative aggressiveness, and requirement for enriching habitats currently restricts experimental setups (especially those for studying social behavior) due to difficulty and expense [59]. This may also inhibit data acquisition for WBE. As stated before, a lot may change between now and the time that we are technologically ready to consider WBE in primates. However, we tentatively suggest that the macaque is less likely than the marmoset to provide additional value as a model system for WBE.

### References:

[1]	J. G. White, E. Southgate, J. N. Thomson, and S. Brenner, “The structure of the nervous system of the nematode Caenorhabditis elegans,” Philos Trans R Soc L. B Biol Sci, vol. 314, no. 1165, pp. 1–340, 1986.

[2]	M. Skuhersky, T. Wu, E. Yemini, A. Nejatbakhsh, E. Boyden, and M. Tegmark, “Toward a more accurate 3D atlas of C. elegans neurons,” BMC Bioinformatics, vol. 23, no. 1, p. 195, 2022, doi: 10.1186/s12859-022-04738-3.

[3]	G. P. Sarma et al., “OpenWorm: overview and recent advances in integrative biological simulation of Caenorhabditis elegans,” Philos. Trans. R. Soc. B Biol. Sci., vol. 373, no. 1758, p. 20170382, Sep. 2018, doi: 10.1098/rstb.2017.0382.

[4]	G. Haspel et al., “To reverse engineer an entire nervous system,” arXiv Prepr. arXiv2308.06578, 2023.

[5]	A. A. Polilov, “Small Is Beautiful: Features of the Smallest Insects and Limits to Miniaturization,” Annu. Rev. Entomol., vol. 60, no. Volume 60, 2015, pp. 103–121, 2015, doi: https://doi.org/10.1146/annurev-ento-010814-020924.

[6]	A. A. Makarova, E. N. Veko, and A. A. Polilov, “Metamorphosis and denucleation of the brain in the miniature wasp Megaphragma viggianii (Hymenoptera: Trichogrammatidae),” Arthropod Struct. Dev., vol. 70, p. 101200, 2022, doi: https://doi.org/10.1016/j.asd.2022.101200.

[7]	N. J. Chua et al., “A complete reconstruction of the early visual system of an adult insect,” Curr. Biol., vol. 33, no. 21, pp. 4611-4623.e4, 2023, doi: https://doi.org/10.1016/j.cub.2023.09.021.

[8]	K. Shinomiya et al., “Connectome analysis of the brain of a miniature wasp, Megaphragma viggianii,” 2023.

[9]	Z. Zheng et al., “A Complete Electron Microscopy Volume of the Brain of Adult Drosophila melanogaster,” Cell, vol. 174, no. 3, pp. 730-743.e22, Jul. 2018, doi: 10.1016/j.cell.2018.06.019.

[10]	M. Winding et al., “The connectome of an insect brain,” Science (80-. )., vol. 379, no. 6636, p. eadd9330, Sep. 2023, doi: 10.1126/science.add9330.

[11]	S. Dorkenwald et al., “Neuronal wiring diagram of an adult brain,” Nature, vol. 634, no. 8032, pp. 124–138, 2024, doi: 10.1038/s41586-024-07558-y.

[12]	S. Takemura et al., “A Connectome of the Male Drosophila Ventral Nerve Cord.” eLife Sciences Publications, Ltd, 2024. doi: 10.7554/elife.97769.1.

[13]	A. Azevedo et al., “Connectomic reconstruction of a female Drosophila ventral nerve cord,” Nature, vol. 631, no. 8020, pp. 360–368, 2024, doi: 10.1038/s41586-024-07389-x.

[14]	A. B. Kunin, J. Guo, K. E. Bassler, X. Pitkow, and K. Josić, “Hierarchical Modular Structure of the Drosophila Connectome,” J. Neurosci., vol. 43, no. 37, pp. 6384 LP – 6400, Sep. 2023, doi: 10.1523/JNEUROSCI.0134-23.2023.

[15]	C.-T. Shih et al., “Connectomics-Based Analysis of Information Flow in the Drosophila Brain,” Curr. Biol., vol. 25, no. 10, pp. 1249–1258, 2015, doi: https://doi.org/10.1016/j.cub.2015.03.021.

[16]	P. Schlegel et al., “Whole-brain annotation and multi-connectome cell typing quantifies circuit stereotypy in &lt;em&gt;Drosophila&lt;/em&gt;,” bioRxiv, p. 2023.06.27.546055, Jan. 2023, doi: 10.1101/2023.06.27.546055.

[17]	H. S. J. Cheong et al., “Transforming descending input into behavior: The organization of premotor circuits in the &lt;em&gt;Drosophila&lt;/em&gt; Male Adult Nerve Cord connectome,” bioRxiv, p. 2023.06.07.543976, Jan. 2024, doi: 10.1101/2023.06.07.543976.

[18]	L. T. Collins, “The case for emulating insect brains using anatomical ‘wiring diagrams’ equipped with biophysical models of neuronal activity,” Biol. Cybern., vol. 113, pp. 465–474, 2019, doi: 10.1007/s00422-019-00810-z.

[19]	P. K. Shiu et al., “A Drosophila computational brain model reveals sensorimotor processing,” Nature, vol. 634, no. 8032, pp. 210–219, 2024, doi: 10.1038/s41586-024-07763-9.

[20]	E. D. Pastuzyn et al., “The Neuronal Gene Arc Encodes a Repurposed Retrotransposon Gag Protein that Mediates Intercellular RNA Transfer,” Cell, vol. 173, no. 1, p. 275, Mar. 2018, doi: 10.1016/j.cell.2018.03.024.

[21]	B. A. Sorg et al., “Casting a Wide Net: Role of Perineuronal Nets in Neural Plasticity,” J. Neurosci., vol. 36, no. 45, pp. 11459 LP – 11468, Nov. 2016, doi: 10.1523/JNEUROSCI.2351-16.2016.

[22]	K. J. Kim, J. Ramiro Diaz, J. A. Iddings, and J. A. Filosa, “Vasculo-Neuronal Coupling: Retrograde Vascular Communication to Brain Neurons,” J. Neurosci., vol. 36, no. 50, pp. 12624 LP – 12639, Dec. 2016, doi: 10.1523/JNEUROSCI.1300-16.2016.

[23]	C. A. Anastassiou, R. Perin, H. Markram, and C. Koch, “Ephaptic coupling of cortical neurons,” Nat. Neurosci., vol. 14, no. 2, pp. 217–223, 2011, doi: 10.1038/nn.2727.

[24]	J. K. Lappalainen et al., “Connectome-constrained networks predict neural activity across the fly visual system,” Nature, 2024, doi: 10.1038/s41586-024-07939-3.

[25]	R. Menzel, “The honeybee as a model for understanding the basis of cognition,” Nat. Rev. Neurosci., vol. 13, p. 758, Oct. 2012, doi: 10.1038/nrn3357.

[26]	W. Yin et al., “A petascale automated imaging pipeline for mapping neuronal circuits with high-throughput transmission electron microscopy,” Nat. Commun., vol. 11, no. 1, p. 4949, 2020, doi: 10.1038/s41467-020-18659-3.

[27]	L. T. Collins and R. Koene, “Comparative prospects of imaging methods for whole-brain mammalian connectomics,” arXiv Prepr. arXiv2405.10488, 2024.

[28]	M. R. Tavakoli et al., “Light-microscopy based dense connectomic reconstruction of mammalian brain tissue,” bioRxiv, p. 2024.03.01.582884, Jan. 2024, doi: 10.1101/2024.03.01.582884.

[29]	C. Solvi, L. Baciadonna, and L. Chittka, “Unexpected rewards induce dopamine-dependent positive emotion–like state changes in bumblebees,” Science (80-. )., vol. 353, no. 6307, pp. 1529–1531, Sep. 2016, doi: 10.1126/science.aaf4454.

[30]	H. S. Galpayage Dona, C. Solvi, A. Kowalewska, K. Mäkelä, H. MaBouDi, and L. Chittka, “Do bumble bees play?,” Anim. Behav., vol. 194, pp. 239–251, 2022, doi: https://doi.org/10.1016/j.anbehav.2022.08.013.

[31]	S. R. Howard, A. Avarguès-Weber, J. E. Garcia, A. D. Greentree, and A. G. Dyer, “Numerical cognition in honeybees enables addition and subtraction,” Sci. Adv., vol. 5, no. 2, p. eaav0961, Sep. 2019, doi: 10.1126/sciadv.aav0961.

[32]	S. R. Howard, A. Avarguès-Weber, J. E. Garcia, A. D. Greentree, and A. G. Dyer, “Numerical ordering of zero in honey bees,” Science (80-. )., vol. 360, no. 6393, pp. 1124–1126, Jun. 2018, doi: 10.1126/science.aar4975.

[33]	A. D. Bridges et al., “Bumblebees socially learn behaviour too complex to innovate alone,” Nature, vol. 627, no. 8004, pp. 572–578, 2024, doi: 10.1038/s41586-024-07126-4.

[34]	R. Menzel, “Navigation and dance communication in honeybees: a cognitive perspective,” J. Comp. Physiol. A, vol. 209, no. 4, pp. 515–527, 2023, doi: 10.1007/s00359-023-01619-9.

[35]	V. Gallo and L. Chittka, “Cognitive Aspects of Comb-Building in the Honeybee?,” Frontiers in Psychology, vol. 9. 2018. [Online]. Available: https://www.frontiersin.org/article/10.3389/fpsyg.2018.00900

[36]	J. Liu et al., “CRISPR/Cas9 in zebrafish: an efficient combination for human genetic diseases modeling,” Hum. Genet., vol. 136, no. 1, pp. 1–12, 2017, doi: 10.1007/s00439-016-1739-6.

[37]	C. Wyatt, E. M. Bartoszek, and E. Yaksi, “Methods for studying the zebrafish brain: past, present and future,” Eur. J. Neurosci., vol. 42, no. 2, pp. 1746–1763, Jul. 2015, doi: https://doi.org/10.1111/ejn.12932.

[38]	G. C. .Vanwalleghem, M. B. Ahrens, and E. K. Scott, “Integrative whole-brain neuroscience in larval zebrafish,” Curr. Opin. Neurobiol., vol. 50, pp. 136–145, 2018, doi: https://doi.org/10.1016/j.conb.2018.02.004.

[39]	A. Lin, D. Witvliet, L. Hernandez-Nunez, S. W. Linderman, A. D. T. Samuel, and V. Venkatachalam, “Imaging whole-brain activity to understand behaviour,” Nat. Rev. Phys., vol. 4, no. 5, pp. 292–305, 2022, doi: 10.1038/s42254-022-00430-w.

[40]	Y. Mu, S. Narayan, B. D. Mensh, and M. B. Ahrens, “Brain-wide, scale-wide physiology underlying behavioral flexibility in zebrafish,” Curr. Opin. Neurobiol., vol. 64, pp. 151–160, 2020, doi: https://doi.org/10.1016/j.conb.2020.08.013.

[41]	M. Kunst et al., “A Cellular-Resolution Atlas of the Larval Zebrafish Brain,” Neuron, vol. 103, no. 1, pp. 21-38.e5, 2019, doi: https://doi.org/10.1016/j.neuron.2019.04.034.

[42]	D. G. C. Hildebrand et al., “Whole-brain serial-section electron microscopy in larval zebrafish,” Nature, vol. 545, p. 345, May 2017, [Online]. Available: https://doi.org/10.1038/nature22356

[43]	F. Svara et al., “Automated synapse-level reconstruction of neural circuits in the larval zebrafish brain,” Nat. Methods, vol. 19, no. 11, pp. 1357–1366, 2022, doi: 10.1038/s41592-022-01621-0.

[44]	M. B. Ahrens, M. B. Orger, D. N. Robson, J. M. Li, and P. J. Keller, “Whole-brain functional imaging at cellular resolution using light-sheet microscopy,” Nat. Methods, vol. 10, p. 413, Mar. 2013, [Online]. Available: https://doi.org/10.1038/nmeth.2434

[45]	D. H. Kim et al., “Pan-neuronal calcium imaging with cellular resolution in freely swimming zebrafish,” Nat. Methods, vol. 14, no. 11, pp. 1107–1114, 2017, doi: 10.1038/nmeth.4429.

[46]	M. Berg, “A miniscule model for research,” Lab Anim. (NY)., vol. 45, p. 133, Mar. 2016, doi: 10.1038/laban.981.

[47]	S. Mikula, “Progress Towards Mammalian Whole-Brain Cellular Connectomics,” Frontiers in Neuroanatomy, vol. 10. p. 62, 2016. [Online]. Available: https://www.frontiersin.org/article/10.3389/fnana.2016.00062

[48]	L. Alonso-Nanclares et al., “Cortical synapses of the world’s smallest mammal: An FIB/SEM study in the Etruscan shrew,” J. Comp. Neurol., vol. 531, no. 3, pp. 390–414, Feb. 2023, doi: https://doi.org/10.1002/cne.25432.

[49]	A. Motta, M. Schurr, B. Staffler, and M. Helmstaedter, “Big data in nanoscale connectomics, and the greed for training labels,” Curr. Opin. Neurobiol., vol. 55, pp. 180–187, 2019, doi: https://doi.org/10.1016/j.conb.2019.03.012.

[50]	L. F. Abbott et al., “The Mind of a Mouse,” Cell, vol. 182, no. 6, pp. 1372–1376, 2020, doi: https://doi.org/10.1016/j.cell.2020.08.010.

[51]	S. Navabpour, J. L. Kwapis, and T. J. Jarome, “A neuroscientist’s guide to transgenic mice and other genetic tools,” Neurosci. Biobehav. Rev., vol. 108, pp. 732–748, 2020, doi: https://doi.org/10.1016/j.neubiorev.2019.12.013.

[52]	T. H. Kim and M. J. Schnitzer, “Fluorescence imaging of large-scale neural ensemble dynamics,” Cell, vol. 185, no. 1, pp. 9–41, Jan. 2022, doi: 10.1016/j.cell.2021.12.007.

[53]	D. Wahlsten, Mouse behavioral testing: how to use mice in behavioral neuroscience. Academic Press, 2010.

[54]	A. R. Nectow and E. J. Nestler, “Viral tools for neuroscience,” Nat. Rev. Neurosci., vol. 21, no. 12, pp. 669–681, 2020.

[55]	N. Xu et al., “Functional Connectivity of the Brain Across Rodents and Humans,” Front. Neurosci., vol. 16, 2022, [Online]. Available: https://www.frontiersin.org/journals/neuroscience/articles/10.3389/fnins.2022.816331

[56]	M. Welniak–Kaminska et al., “Volumes of brain structures in captive wild-type and laboratory rats: 7T magnetic resonance in vivo automatic atlas-based study,” PLoS One, vol. 14, no. 4, p. e0215348, Apr. 2019, [Online]. Available: https://doi.org/10.1371/journal.pone.0215348

[57]	B. Ellenbroek and J. Youn, “Rodent models in neuroscience research: is it a rat race?,” Dis. Model. Mech., vol. 9, no. 10, pp. 1079–1087, Oct. 2016, doi: 10.1242/dmm.026120.

[58]	J. A. French, “Chapter 26 - The Marmoset as a Model in Behavioral Neuroscience and Psychiatric Research,” in American College of Laboratory Animal Medicine, R. Marini, L. Wachtman, S. Tardif, K. Mansfield, and J. B. T.-T. C. M. in C. and B. R. Fox, Eds. Academic Press, 2019, pp. 477–491. doi: https://doi.org/10.1016/B978-0-12-811829-0.00026-1.

[59]	C. T. Miller, W. A. Freiwald, D. A. Leopold, J. F. Mitchell, A. C. Silva, and X. Wang, “Marmosets: A Neuroscientific Model of Human Social Behavior,” Neuron, vol. 90, no. 2, pp. 219–233, Apr. 2016, doi: 10.1016/j.neuron.2016.03.018.

[60]	D. Cossins, “Marmosets prove to be polite conversationalists,” Nature, 2013, doi: 10.1038/nature.2013.13974.

[61]	A. Watakabe, O. Sadakane, K. Hata, M. Ohtsuka, M. Takaji, and T. Yamamori, “Application of viral vectors to the study of neural connectivities and neural circuits in the marmoset brain,” Dev. Neurobiol., vol. 77, no. 3, pp. 354–372, Mar. 2017, doi: https://doi.org/10.1002/dneu.22459.

[62]	A. Lear, S. N. Baker, H. F. Clarke, A. C. Roberts, M. C. Schmid, and W. Jarrett, “Understanding them to understand ourselves: The importance of NHP research for translational neuroscience,” Curr. Res. Neurobiol., vol. 3, p. 100049, 2022, doi: https://doi.org/10.1016/j.crneur.2022.100049.

[63]	C. G. Jennings et al., “Opportunities and challenges in modeling human brain disorders in transgenic primates,” Nat. Neurosci., vol. 19, no. 9, pp. 1123–1130, 2016, doi: 10.1038/nn.4362.

