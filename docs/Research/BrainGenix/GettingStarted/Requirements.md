# Requirements

## Recommended Linux Distros

BrainGenix has been written for the Linux platform, and therefore will only work well with a true Linux installation (not WSL). We develop on Debian-based distros, so something Debian-based will probably work best.

With that said, here are some specific distros that we've tested to work:

- Debian 12
- Ubuntu Server 22.04



## Recommended Hardware

In order to provide the best experience to users, we have created a few example installations below, which can be used as reference for your own setup.




=== "Small Installation"

    You can install the whole BG stack on one single machine (even your local machine) - especially for development purposes. Please note that you likely won't be able to render anything too large unless you have large amounts of either patience or RAM.

    For this, really any hardware will work as long as it's got at least 8GiB RAM, but some recommended specs are shown below for reference.

    | Attribute   | Description                          |
    | ----------- | ------------------------------------ |
    | `CPU`       | >= Quad-Core 2.2GHz CPU              |
    | `RAM`       | >= 16GB DDR4 2400MHz Dual-Channel ECC RAM         |
    | `Disk`      | >= 128GiB SATA SSD (speeds not important)  |
    | `Network`   | >= Gigabit |


=== "Medium Installation"

    For a medium scale installation, we currently (as of 2024-04-02) recommend having two servers, both running Debian 12 or Ubuntu Server 22.04. The API server should have it's own server as well as NES.

    We mostly indicate that you should have a lot of RAM on the NES server simply due to voxel array sizes. When rendering virtualEM and virtualCA stacks, a large voxel array is created, which can consume large amounts of memory. NES will automatically detect how much ram you have and subdivide the region if needed, but that comes with a significant performance penalty.
    
    ## API Server Specs
    | Attribute   | Description                          |
    | ----------- | ------------------------------------ |
    | `CPU`       | >= Quad-Core 2.2GHz CPU              |
    | `RAM`       | >= 16GB DDR4 2400MHz Dual-Channel ECC RAM         |
    | `Disk`      | >= 128GiB SATA SSD (speeds not important)  |
    | `Network`   | >= Gigabit |

    ## NES Server Specs
    | Attribute   | Description                          |
    | ----------- | ------------------------------------ |
    | `CPU`       | >= 40-Core 2.8GHz CPU              |
    | `RAM`       | >= 512GB DDR4 2666MHz 12-Channel ECC RAM         |
    | `Disk`      | >= 2TiB SATA SSD (speeds not important)  |
    | `Network`   | >= Gigabit |




---

*This documentation is provided by BrainGenix, a division of Carboncopies Foundation R&D. BrainGenix is a platform focused on advancing the field of whole-brain-emulation and computational neuroscience. BrainGenix is part of the CarbonCopies Foundation, a 501\(c)3 non-profit organization dedicated to researching and promoting whole brain emulation. Learn more about CarbonCopies at https://carboncopies.org. For any queries or feedback regarding BrainGenix projects or documentation, please write to us at contact@carboncopies.org.*
