# BrainGenix-EVM: Evaluation Metrics for Neuronal System Reconstruction

## Introduction

Welcome to BrainGenix-EVM, our Evaluation Metrics service designed specifically for the WBE (Whole Brain Emulation) challenge. Our platform provides tools that empower researchers and scientists in assessing the accuracy of reconstructed neuronal systems by comparing them against their original ground truth counterparts. 

!!! warning
    EVM is currently under rapid development - these features may not yet be fully implemented.
    Please get in contact with us if you have any questions regarding what's currently implemented.
    These features currently serve as our goals.

## Features of BrainGenix-EVM (in-progress)

#### 1. Structural Validation Metrics
- **Edit Distance**: Quantifies the similarity between two neural network topologies by calculating the minimum number of operations (insertions, deletions, or substitutions) needed to transform one into the other. This metric is crucial in identifying potential discrepancies in synaptic connections and neuron placements within reconstructed systems.
- **Topological Similarity**: Measures how closely the structural organization of reconstructed networks mirrors the ground truth, ensuring that the emulated brain's architecture remains faithful to its ground-truth starting-point.
- **Synaptic Matching**: Evaluates the precision of synapse placement and connectivity, which is vital for capturing the intricate neural pathways that underlie brain function.
- **Neuron Type Distribution**: Analyzes whether the reconstructed system accurately reflects the diversity and distribution of neuron types present in the original virtual tissue.

#### 2. Functional Validation Metrics
- **Activity Correlation**: Assesses how well the firing patterns of neurons in the emulated system correlate with those of the ground truth, providing insights into the functional fidelity of the emulation.
- **Dynamic Complexity**: Examines whether the reconstructed system exhibits similar complex dynamics as the original when exposed to various stimuli or during different brain states.
- **Behavioral Prediction**: Validates the system's ability to replicate or predict behaviors associated with specific neural activities or patterns.



---

*This documentation is provided by BrainGenix, a division of Carboncopies Foundation R&D. BrainGenix is a platform focused on advancing the field of whole-brain-emulation and computational neuroscience. BrainGenix is part of the CarbonCopies Foundation, a 501\(c)3 non-profit organization dedicated to researching and promoting whole brain emulation. Learn more about CarbonCopies at https://carboncopies.org. For any queries or feedback regarding BrainGenix projects or documentation, please write to us at contact@carboncopies.org.*