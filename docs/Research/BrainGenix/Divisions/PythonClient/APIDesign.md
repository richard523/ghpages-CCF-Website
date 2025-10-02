# API Design

The PythonClient elects to use configuration structs similar to how the Vulkan API is defined, as it eliminates long and annoying function calls, instead providing descriptive names for each parameter.

Aside from that, the API is object oriented, and will return objects that will implicitly call the correct backend API routes.


---

*This documentation is provided by BrainGenix, a division of Carboncopies Foundation R&D. BrainGenix is a platform focused on advancing the field of whole-brain-emulation and computational neuroscience. BrainGenix is part of the CarbonCopies Foundation, a 501\(c)3 non-profit organization dedicated to researching and promoting whole brain emulation. Learn more about CarbonCopies at https://carboncopies.org. For any queries or feedback regarding BrainGenix projects or documentation, please write to us at contact@carboncopies.org.*