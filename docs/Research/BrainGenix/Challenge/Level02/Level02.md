# Challenge Level 2

## Abstractions and simplifications

The first sophistication level of the WBE Challenge features these characteristics and
simplifications of virtual brain data:

- **Empty extracellular space**: There are no glia, vasculature or other components in the
  exracellular space. Only neural cell bodies and their processes are present.

- **Very small sample size**: The number of neurons in the sample is very small.

- **Two types of neurons**: Only 2 types of neurons are present, a generic principal
  neuron and a generic interneuron. The two types are easily distinguished.

- **First order morphology**: Neuron morphologies are simplified such that straight
  compartments connect successive branch points on axons and dendrites. Soma are highly
  simplified. Synaptic connections occur between axon and dendrite pieces.

- **Two receptor types**: Connections use one of 2 receptor types, one used in inhibitory
  connections from presynaptic interneurons (a GABA type), and one used in excitatory
  connections from presynaptic principal neurons (an AMPA type).

- **Zeroth order synaptic connections**: Synaptic connectivity between any pair of
  neurons, where present, is achieved by a single synapse (seen in EM as a single
  postsynaptic density).

## Challenge data set

### EM Images

The EM image stack was produced using a virtual FIBSEM process.

- There is 1 imaged sample region.
- The total sample volume imaged is 150 um x 150 um x 40 um.
- The z-distance between successive imaging depths is 40 nm.
- The x-y pixel resolution is 20 nm on each axis.
- Each image contains 1024x1024 pixels.
- Image overlap in both x and y is 10%.
- The data set comprises a total of 81,000 images with a total size of 3.6GB.

### Calcium Imaging

To be added.

### Extracellular Electrode Recording

The data from each recording electrode is contained in a JSON file with the
following format:

```
{
  "Name": string,         # Unique name of the electrode.
  "TipPosition": list,    # X,Y,Z coordinates of the electrode tip in the sample.
  "EndPosition": list,    # X,Y,Z coordinates of the end of the electrode.
  "Sites": list of lists, # Relative X,Y,Z locations of each recording site on the electrode (see below).
  "TimeStamp_ms": list,   # List of recording time points.
  "ElectricField_mV": list of lists, # For each site, a list of recorded voltages at each time point.
}
```

The relative X,Y,Z location of a recording site on an electrode is expressed as
a ratio of the electrode X,Y,Z dimensions. For example, a site at `[0, 0, 0.5]` is
located at an X,Y edge of an electrode, halfway up its Z length.

- This data set contains JSON files with recordings from ?? electrodes.
- Each recording was made over a time interval of ?? ms.


## Download Link

!!! warning
    Download links currently disabled - will be enabled upon release.

Download the complete data set as a compressed file at this link:

[something-something-something](https://somewhere-somewhere-somewhere)

---

*The WBE Challenge is developed and supported by the Virtual Brain Platform (VBP) and Neural Emulation System (NES) groups of the BrainGenix division of the Carboncopies Foundation R&D. The Carboncopies Foundation (CCF) is a 501\(c)3 non-profit research and education organization. You can read more about the CCF at https://carboncopies.org, and BrainGenix at https://braingenix.org.*

For questions or comments, please write to wbechallenge@carboncopies.org.
