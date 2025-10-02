# EM Rendering - Parameters

In this section, we will cover what all of the different options in the EM renderer are, and what they do. 



## Base Parameters


This section covers the base parameters needed to get the Virtual Microscope to render anything.

In future sections, we will discuss optional parameters that you can use to tweak to change the final image, such as the addition of noise.

| Parameter      | Description                          |
| :---------- | :----------------------------------- |
| `PixelResolution_um`       | X,Y size of each pixel in the final image in micrometers  |
| `ImageWidth_px`       | X resolution of each final output image |
| `ImageHeight_px`    | Y resolution of each final output image |
| `SliceThickness_um`    | Z-height of each slice in micrometers |
| `ScanRegionOverlap_percent`    | Amount that each image overlaps in percentages of the image size |
| `MicroscopeFOV_deg`    | Currently unused, will be added in a future version |
| `NumPixelsPerVoxel_px`    | Allows for a sort of 'zoom', probably leave this at 1 |


!!! example

    Here is an example configuration that will render a series of 512x512 images at 10 nanometers per pixel, with a slice thickness of 20 nanometers.

    ```python
    EMConfig = NES.VSDA.EM.Configuration()
    EMConfig.PixelResolution_um = 0.01
    EMConfig.ImageWidth_px = 512
    EMConfig.ImageHeight_px = 512
    EMConfig.SliceThickness_um = 0.02
    EMConfig.ScanRegionOverlap_percent = 0
    EMConfig.MicroscopeFOV_deg = 50
    EMConfig.NumPixelsPerVoxel_px = 1
    VSDAEMInstance = MySim.AddVSDAEM(EMConfig)
    ```
        

For advanced usage and configuration of non-required parameters, please refer to other sections of this guide.


---

*This documentation is provided by BrainGenix, a division of Carboncopies Foundation R&D. BrainGenix is a platform focused on advancing the field of whole-brain-emulation and computational neuroscience. BrainGenix is part of the CarbonCopies Foundation, a 501\(c)3 non-profit organization dedicated to researching and promoting whole brain emulation. Learn more about CarbonCopies at https://carboncopies.org. For any queries or feedback regarding BrainGenix projects or documentation, please write to us at contact@carboncopies.org.*