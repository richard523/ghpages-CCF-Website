# BrainGenix EVM (Evaluation Metrics) Setup & Configuration

## Quick Start Guide

This quick start guide will get you up and running with an instance of BrainGenix-EVM in as few commands as possible. Please follow these steps:

!!! note
    A detailed version of this guide will be available soon.

### Prerequisites

Before starting, ensure you have `git` installed on your machine.

### Installation

!!! warning

    As of 2024-05-23, Ubuntu 24.04 is not supported and will not work.

1. **Clone the EVM repository**: Begin by cloning the EVM repository from BrainGenix's official repository.
```bash
git clone https://gitlab.braingenix.org/carboncopies/BrainGenix-EVM.git && cd BrainGenix-EVM/Tools
```
This will download the latest version of EVM to your local machine.

2. **Setup environment**: Run the setup script provided in the `Tools` directory to install all necessary dependencies.
```bash
./Setup.sh
```
This script will automatically configure your environment and install required packages.

3. **Build EVM**: With the environment ready, build EVM using the appropriate configuration based on your machine's capabilities. For a standard build with 20 threads (or adjust according to your CPU cores), use:
```bash
./Build.sh 20 Release
```

!!! warning

    Using too many threads to build the program at once can make your machine run out of memory. We advise setting this to the same number of CPU cores as your machine has, or if unknown, using 6 as a safe default assumption.


### Troubleshooting

If you got an error that looks like the following, then you need to make sure your setup script finished fully without errors.

![Error when setup script has not finished and build is run](Assets/Screenshot_20240623_115213.png)

Also, if your build fails with a `no such file or directory` error, make sure to `./Clean.sh` then rebuild.


### Running EVM

Once the build process completes without errors, you can start using EVM by executing:
```bash
./Run.sh
```
This command will launch EVM in your console, ready for evaluating neural metrics.

### Creating Debian Package (Optional)

For convenience in deployment across various Debian-based systems, you can create a Debian package (.deb file) by running:
```bash
./Package.sh
```
This will generate an `.deb` file in the `Artifacts` directory, simplifying installation without manual setup or building steps.




---

*This documentation is provided by BrainGenix, a division of Carboncopies Foundation R&D. BrainGenix is a platform focused on advancing the field of whole-brain-emulation and computational neuroscience. BrainGenix is part of the CarbonCopies Foundation, a 501\(c)3 non-profit organization dedicated to researching and promoting whole brain emulation. Learn more about CarbonCopies at https://carboncopies.org. For any queries or feedback regarding BrainGenix projects or documentation, please write to us at contact@carboncopies.org.*