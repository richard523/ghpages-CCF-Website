# BrainGenix Platform Installation Guide

!!! note

    In this getting started guide, we assume you wish to install the BrainGenix backend on your local machine.
    If you do not wish to do this, please skip to the Client Installation guide.

!!! warning

    As of 2024-05-23, Ubuntu 24.04 is not supported and will not work.


## Step 1: Setting Up
To begin installing the BrainGenix Platform, you must first establish your preferred directory. For optimal organization, we suggest placing it within your personal documents folder under a dedicated subfolder named "BrainGenix". Please navigate to this location using your terminal:

```sh
cd ~/Documents/
mkdir BrainGenix
cd BrainGenix/
```

Before proceeding with the installation of BrainGenix, ensure that you have Git installed on your system as it is essential for retrieving the latest updates from our repositories. If you have not installed Git already, you can do so by executing the following command

`sudo apt install git`

Once the installation is complete, you may now proceed with downloading and installing the BrainGenix software from our official repository. This will be covered in subsequent sections of this guide. For now, ensure that you have created the directory structure as instructed above and have a stable internet connection for efficient downloading of required packages. If you encounter any issues during the installation process, please refer back to this document or contact our technical support team for further assistance.



## Step 2: Installing the BrainGenix-API Service

At this point, you'll want to get the API endpoint service setup - this is the system that hosts our HTTP/HTTPS API. When you start using BrainGenix, you'll point your client to this service, and it'll make sure your requests get to the right backend services.

Please jump on over to our [API Setup Guide](/Divisions/API/Setup), and come back here when done.


## Step 3: Installing the BrainGenix-NES (Neural Emulation System) Backend Service

Now, we'll get NES running on your machine. NES is the service that provides the simulator and Virtual Scan Data Acquisition. For now, the visualization system is also provided by NES.

To get started, head on over to the [NES Setup Guide](/Divisions/NES/Setup), and come back over here when you're ready to move on to the next step.


## Step 4: (Optional) Installing the BrainGenix-EVM (Evaluation Metrics) Service

If you're planning on doing work with the [standardized challenge](/Challenge/Overview), then you may wish to install the evaluation metrics service. This is what we use to evaluate reconstructions for accuracy.

To do so, once again head over to the [EVM Setup Guide](/Divisions/EVM/Setup), and come back when you're done.


## Conclusion

At this point you should have a working local setup of BrainGenix - if you have any questions or concerns not addressed in this documentation, please don't hesitate to reach out to us at contact@carboncopies.org.

You may wish to proceed to the [Client Installation](/GettingStarted/ClientInstallation) guide, to begin working with your install.


---

*This documentation is provided by BrainGenix, a division of Carboncopies Foundation R&D. BrainGenix is a platform focused on advancing the field of whole-brain-emulation and computational neuroscience. BrainGenix is part of the CarbonCopies Foundation, a 501\(c)3 non-profit organization dedicated to researching and promoting whole brain emulation. Learn more about CarbonCopies at https://carboncopies.org. For any queries or feedback regarding BrainGenix projects or documentation, please write to us at contact@carboncopies.org.*