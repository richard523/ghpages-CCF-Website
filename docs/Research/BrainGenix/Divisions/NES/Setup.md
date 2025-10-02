# BrainGenix NES (Neuronal Emulation System) Installation & Configuration

## Quick Start Guide

This quick start guide will walk you through setting up NES on your machine as quickly as possible. We'll cover cloning the repository, installing dependencies, building the system, and running it.

!!! note
    A comprehensive guide will be available soon.

### Prerequisites

Before starting, ensure you have a somewhat modern version of `git` installed on your machine.

### Installation

!!! warning

    As of 2024-05-23, Ubuntu 24.04 is not supported and will not work.

1. **Clone the NES repository**: Begin by cloning the NES repository to your local machine.
```bash
git clone https://gitlab.braingenix.org/carboncopies/BrainGenix-NES.git && cd BrainGenix-NES/Tools
```

2. **Setup environment**: Run the setup script provided in the `Tools` directory to install all necessary dependencies.
```bash
./Setup.sh
```
This script will handle setting up your environment and installing required packages automatically.

3. **Build NES**: With the environment set up, you can now build NES using the specified configuration. For a standard build with 20 threads (adjust according to your machine's CPU cores), use:
```bash
./Build.sh 20 Release
```

!!! warning

    Using too many threads to build the program at once can make your machine run out of memory. We advise setting this to the same number of CPU cores as your machine has, or if unknown, using 6 as a safe default assumption.


### Troubleshooting

If you got an error that looks like the following, then you need to make sure your setup script finished fully without errors.

![Error when setup script has not finished and build is run](Assets/Screenshot_20240623_115213.png)

Also, if your build fails with a `no such file or directory` error, make sure to `./Clean.sh` then rebuild.


### Running NES

Once the build is complete, you can start NES using the `Run` script:
```bash
./Run.sh
```
This will launch your NES instance in the console.

### Creating Debian Package (Optional)

For easier deployment across multiple systems, you can create a Debian package (.deb file) by executing:
```bash
./Package.sh
```
This will generate a `.deb` file in the `Artifacts` directory that you can use to install NES on Debian-based systems without manually running setup or build commands.

The `.deb` package will automatically start NES with a systemd service, simplifying future use.





---

*This documentation is provided by BrainGenix, a division of Carboncopies Foundation R&D. BrainGenix is a platform focused on advancing the field of whole-brain-emulation and computational neuroscience. BrainGenix is part of the CarbonCopies Foundation, a 501\(c)3 non-profit organization dedicated to researching and promoting whole brain emulation. Learn more about CarbonCopies at https://carboncopies.org. For any queries or feedback regarding BrainGenix projects or documentation, please write to us at contact@carboncopies.org.*