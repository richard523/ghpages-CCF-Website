# Standardized Format For Challenge Submissions

This document describes the format for which data is generated from the Standardized Challenge and sent to participants. Additionally, it describes the format expected of submissions.

To see an overview of the challenge, please reference the below image:

![Standardized Challenge Overview](Diagrams/ChallengeStructure.drawio.neg.png)


To understand the two types of formats that are being defined here, and to see what they do, please reference the following image:
![Standardized Challenge Data Formats](Diagrams/ChallengeStructure-FormatAnnotations.drawio.neg.png)



# Provided Data

- Root Directory

    - `Index.json` (file)
        
        ```json
            {
                'TotalElectrodes': <int>,
                'TotalEMRegions': <int>,
                'TotalCARegions': <int>
            }
        ```

    - `Electrodes` (dir)
        
        Contains one file per electrode, the total number of files will be equal to the TotalElectrodes parameter in Index.json.
        Files start at `0`, and count upwards sequentially.
        The format is as follows: `%i.json` where `%i` is an integer.

        - `0.json` Example Format:

        ```json
            {
                'Name': <string>,
                'TipPosition': [XPos_um, YPos_um, ZPos_um],
                'EndPosition': [XPos_um, YPos_um, ZPos_um],
                'Sites': [
                    [XRatio, YRatio, ZRatio],
                    ...
                ],
                'TimeStamp_ms': [0,....,999,1999,...,2299]
                'ElectricField_mV': [
                    [...site 0 electric field potential in mV...]
                    [...site 1...]
                    ...
                ]
            }
        ```

        At time points where recordings are made, the electric field potential
        is recorded at all of the sites of that electrode.
        TipPosition and EndPosition are specified in world coordinates.
        The XRatio, YRatio and ZRatio of each electrode site specify where a
        site is located on the electrode as a ratio of its X, Y and Z dimensions.
        For example, a site located at ZRatio=0.5 in the middle of the electrode
        along its Z-axis.



    - `EMRegions` (dir)

        This directory will have `TotalEMRegions` subdirectories, also named in sequential integers starting from 0.
        Each one will represent a specific region. 
        Please see the below example of one region.

        - `0` Example Dir:

            - `Params.json` Example file: 
            ```json
                {
                    'NumImagesX': <int>,
                    'NumImagesY': <int>,
                    'NumSlices': <int>,
                    'SliceThickness_um': <float>,
                    'ScanRegionBottomLeft_um': [X_um, Y_um, Z_um],
                    'ScanRegionTopRight_um': [X_um, Y_um, Z_um],
                    'SampleRotation_rad': [X_rad, Y_rad, Z_rad],
                    'Overlap_percent': <float>
                }
            ```

            - `Data` Directory:

                This directory contains the image files.
                There will be many subdirectories containing each slice, and these will have the images for each slice within.
                Please see the example Provided Dataset for more info.

    - `CARegions` (dir)

        This directory will have `TotalCARegions` subdirectories, also named in sequential integers starting from 0.
        Each one will represent a specific region. 
        Please see the below example of one region.

        - `0` Example Dir:

            - `Params.json` Example file: 
            ```json
                {
                    'SheetThickness_um': <float>,
                    'ScanRegionBottomLeft_um': [X_um, Y_um, Z_um],
                    'ScanRegionTopRight_um': [X_um, Y_um, Z_um],
                    'SampleRotation_rad': [X_rad, Y_rad, Z_rad],
                    'IndicatorName': <string>,
                    'ImageTimestep_ms': <float>
                }
            ```

            - `Data` Directory:

                This directory contains the image files.
                There will be many subdirectories containing each slice, and these will have the images for each slice within.
                Please see the example Provided Dataset for more info.

# Submission Format

Please use the following `JSON` format when submitting your challenge.

The format has some initial metadata at the beginning:

```json
"Model": "name-of-challenge-dataset", // could be 'xor-sc' or 'e0_bs', etc.
"SubmissionAuthors": ["List", "Of", "Authors", "Contributing", "To", "Your", "Submission"],
"SubmissionFormatVersion": 1, // always should be 1, as we will use this to identify future versions of this format
```

Next, your file should contain a list in JSON for neurons. The individual neurons will be structured as follows:
```json
{ 
    "Name": "your-name-here-that-must-be-unique",
    "Type": "principal-or-interneuron",
    "Position_um": [0.0, 0.0, 0.0], // Position in micrometers from world origin for the center of the soma of this neuron
    "SomaRadius_um": 0.0
}
```

So, this should look like this in the `Neurons` list:
```json
"Neurons": [
    {
        "Name": "A",
        "Type": "principal",
        "Position_um": [5.2, 3.6, 1.2],
        "SomaRadius_um": 10.0
    },
    {
        "Name": "B",
        "Type": "interneuron",
        "Position_um": [18.5, -5.6, -15.2],
        "SomaRadius_um": 5.0
    }
]
```

Nextly, you'll use a `Connections` list to describe the connections from each neuron to each other neuron.
Each individual connection will be structured like this.
```json
{
    "Type": "AMPA-or-GABA",
    "Weight": 1.0, // any floating point value >= 0
    "From": "A", // name of a neuron
    "To": "B" // name of another neuron
}
```

Therefore, the full Connections list should be formatted as follows:
```json
"Connections": [
    {
        "Type": "AMPA",
        "Weight": 0.5,
        "From": "A",
        "To": "B"
    },
    {
        "Type": "GABA",
        "Weight": 0.7,
        "From": "B",
        "To": "C"
    }
]
```


Therefore an example full file could be as follows:
```json 
{
    "Model": "name-of-challenge-dataset",
    "SubmissionAuthors": ["List", "Of", "Authors", "Contributing", "To", "Your", "Submission"],
    "SubmissionFormatVersion": 1,
    "Neurons": [
        {
            "Name": "A",
            "Type": "principal",
            "Position_um": [5.2, 3.6, 1.2],
            "SomaRadius_um": 10.0
        },
        {
            "Name": "B",
            "Type": "interneuron",
            "Position_um": [18.5, -5.6, -15.2],
            "SomaRadius_um": 5.0
        }
    ],
    "Connections": [
        {
            "Type": "AMPA",
            "Weight": 0.5,
            "From": "A",
            "To": "B"
        },
        {
            "Type": "GABA",
            "Weight": 0.7,
            "From": "B",
            "To": "C"
        }
    ]
}
```

