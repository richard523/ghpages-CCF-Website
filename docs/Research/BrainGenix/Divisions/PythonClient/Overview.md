# Overview of the Virtual Brain Platform

!!! warning
    
    This documentation is currently a work-in-progress, please check back soon for updates. We're working hard to get the entire BrainGenix platform well-documented.

The Virtual Brain Platform is a front-end to the BrainGenix API driven NES and EVM services. Its aim is to provide a Python-based interface with which researchers can build multi-scale models and evaluate results with relative ease. For example, the Brain Emulation Challenge uses this interface to generate virtual data sets and evaluate proposed emulations.

**pyBrainGenixClient** is a Python package that serves as a convenient API client for interacting with the BrainGenix platform, which specializes in whole brain emulation research. This tool allows users to create simulations and manage different aspects of the BrainGenix ecosystem using Python, facilitating efficient research and experimentation in neuroscience.



## Key Features of the PythonClient

1. **Object-Oriented Interface**: `pyBrainGenixClient` provides a clean and well-structured object-oriented interface that abstracts away complex API interactions. This design choice makes it easier for developers of all backgrounds to engage with the platform without getting bogged down in technical details. It promotes code that is more maintainable and easier to integrate into existing workflows or projects.
    - The object-oriented approach ensures that users can focus on their scientific models and simulations rather than API intricacies.
    - It allows for simple incorporation of BrainGenix features into various research pipelines, enhancing productivity and scalability.

2. **Remote Simulation**: One of the standout features of `pyBrainGenixClient` is its ability to run simulations on remote servers. This capability gives researchers access to additional computational resources as required, which is crucial when dealing with large-scale or computationally intensive simulations that demand substantial processing power or memory.
    - Scaling up simulations becomes effortless, as researchers can leverage remote resources to handle heavy workloads.
    - It significantly reduces simulation runtimes by distributing tasks efficiently across multiple machines or cloud instances.

3. **Compartmental Modeling**: `pyBrainGenixClient` supports various compartment models such as balls-and-sticks (simple neuron models) and compartmental models that can be tailored to mimic different types of neurons and their interactions within simulations.
    - This flexibility enables scientists to create detailed neural models that accurately represent various cell types and behaviors, catering to diverse research objectives.

4. **Virtual Electron Microscope (VSDA EM) Rendering**: The package seamlessly integrates with the NES VSDA EM rendering system for high-quality visualization of simulation data.
    - VSDA EM rendering generates customizable electron microscopy (EM) stacks that are valuable for reconstruction and analysis purposes.
    - Additionally, neuroglancer links can be generated from these datasets, allowing interactive exploration.

5. **Calcium Renderer - VSDA CA Renderer**: `pyBrainGenixClient` includes support for VSDA Calcium (CA) rendering, which visualizes intracellular calcium dynamics within neurons during simulation.
    - VSDA CA renderer can be used alongside electrode recordings to correlate calcium activity with electrical signals in neurons.

6. **Electrode Recording**: The package enables users to set up virtual electrodes within their simulations to record electrical activity from specified neuron locations.
    - This functionality is critical for studying how neurons communicate and how electrical signals propagate through neural networks.
    - Electrode recordings can be analyzed alongside other simulation data to gain comprehensive understanding of brain activity patterns.

7. **Visualizer**: An integral part of `pyBrainGenixClient` is its visualizer component, which creates 3D visualizations of simulation data.
    - It allows users to create 3D visualizations of the simulation for debugging and validation purposes.
    - !!! example
        ![Example Visualizer Output](Visualizer/Assets/BrainGenix-Visualizer-Netmorph-Example.png)

---

*This documentation is provided by BrainGenix, a division of Carboncopies Foundation R&D. BrainGenix is a platform focused on advancing the field of whole-brain-emulation and computational neuroscience. BrainGenix is part of the CarbonCopies Foundation, a 501\(c)3 non-profit organization dedicated to researching and promoting whole brain emulation. Learn more about CarbonCopies at https://carboncopies.org. For any queries or feedback regarding BrainGenix projects or documentation, please write to us at contact@carboncopies.org.*