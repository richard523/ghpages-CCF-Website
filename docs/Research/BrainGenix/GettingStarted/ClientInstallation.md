# BrainGenix Python Client Installation


## Option 1: Installing via Pip
For ease of installation, we offer the BrainGenix Python Client as a package through pip. Please ensure you are using Python 3 when executing these commands:
```bash
pip3 install pyBrainGenixClient
```

Now, you can test your install by opening up a python terminal and importing it as follows:

```
user@bg:~$ python3
Python 3.10.12 (main, Nov 20 2023, 15:14:05) [GCC 11.4.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import BrainGenix
>>>
```

!!! note

    We strive to keep our packages up-to-date; however, if you find that the package is not current, you may need to build it locally using the instructions provided in Option 2.


## Option 2: Building python package locally

To build the package on your machine, simply clone the repo:

```bash
# Clone the BrainGenix Python Client repository
git clone https://gitlab.braingenix.org/carboncopies/BrainGenix/NES/PythonClient
cd PythonClient/Tools/
```

Next, enter the directory:

```bash
cd PythonClient/Tools
```

Ensure you have the dependencies with the following helper script:

```bash
# Run the setup script
./Setup.sh
```

After that, you may simply run the build script:

```bash
# Execute the build script
./Build.sh
```

Finally, a wheel file will be generated which you can install.

```bash
pip3 install ../dist/*.whl
```


Congratulations on installing the BrainGenix Python Client! 



#### Troubleshooting:
If you encounter any issues during installation, please check your system's Python environment and ensure all prerequisites are installed as per the setup script's output.
For further assistance or to report any discrepancies, do not hesitate to contact us at contact@carboncopies.org or create an issue on our GitLab page.


---

*This documentation is provided by BrainGenix, a division of Carboncopies Foundation R&D. BrainGenix is a platform focused on advancing the field of whole-brain-emulation and computational neuroscience. BrainGenix is part of the CarbonCopies Foundation, a 501\(c)3 non-profit organization dedicated to researching and promoting whole brain emulation. Learn more about CarbonCopies at https://carboncopies.org. For any queries or feedback regarding BrainGenix projects or documentation, please write to us at contact@carboncopies.org.*