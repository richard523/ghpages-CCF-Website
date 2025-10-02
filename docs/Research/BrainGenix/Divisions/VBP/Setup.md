# BrainGenix-VBP Setup Guide

This documentation will guide you through the process of setting up the project on your local machine. Please ensure that you have `Git` installed on your system before proceeding. If you don't have `Git`, you can download it from [the official website](https://git-scm.com/).

### Prerequisites

Before starting, ensure you have a somewhat modern version of `git` installed on your machine

## Step 1: Clone the Repository
To get started, you need to clone the `BrainGenix-VBP` repository from our GitLab server. Use the following command in your terminal or command prompt:
```bash
git clone https://gitlab.braingenix.org/carboncopies/virtual-brain/vbp.git
```
This command will create a local copy of the project in a directory named `vbp` in your current working directory.

## Step 2: Navigate to Tools Directory
Once you have cloned the repository, navigate to the `Tools` directory where the setup script is located:
```bash
cd vbp/Tools
```
This command changes your current directory to `vbp/Tools`.

## Step 3: Run Setup Script
To set up the environment and dependencies required by `BrainGenix-VBP`, execute the `Setup.sh` script:
```bash
./Setup.sh
```
This script will automatically install and configure necessary tools, libraries, and submodules for you. It may take several minutes to complete, depending on your system's performance and internet connection speed. Please be patient.

## Step 4: Run Update Script (Optional)
If you have cloned the repository previously and want to update it to the latest version, you can run the `Update.sh` script:
```bash
./Update.sh
```
This command will pull any recent changes from the remote repository and submodules and ensure that you are using the latest version of `BrainGenix-VBP`. It's a good practice to run this periodically to keep your local copy up-to-date.





---

*This documentation is provided by BrainGenix, a division of Carboncopies Foundation R&D. BrainGenix is a platform focused on advancing the field of whole-brain-emulation and computational neuroscience. BrainGenix is part of the CarbonCopies Foundation, a 501\(c)3 non-profit organization dedicated to researching and promoting whole brain emulation. Learn more about CarbonCopies at https://carboncopies.org. For any queries or feedback regarding BrainGenix projects or documentation, please write to us at contact@carboncopies.org.*