# Virtual Electron Microscope - Getting Started

The BrainGenix-Client provides access to the Virtual Scan Data Acquisition (VSDA) subsystem, which as the name implies, generates virtual scan data from simulations built with BrainGenix. This page specifically discusses usage of the virtual Electron Microscope.

This page provides a getting started example for the renderer, we will go in depth with presets and configuration options in future pages.




## Example from the Virtual Electron Microscope

To get started with the VSDA EM subsystem, you merely need to create a simulation, and define some compartments with shapes attached. Once those have been defined, the virtual microscope will be able to see what you have defined.

To get started, we assume you already have a simulation with some compartments. In our examples, we will be using a sphere and a BS compartment created from the sphere.

At this point, you just need to setup the microscope, and ask it to render.

!!! note

    We assume you have a simulation instance already created. Replace `MySim` with the name of your simulation name.
     

```python
# Setup VSDA Renderer
print(" -- Setting Up VSDA EM Renderer")
EMConfig = NES.VSDA.EM.Configuration()
EMConfig.PixelResolution_nm = 0.01
EMConfig.ImageWidth_px = 512
EMConfig.ImageHeight_px = 512
EMConfig.SliceThickness_nm = 0.02
EMConfig.ScanRegionOverlap_percent = 0
EMConfig.MicroscopeFOV_deg = 50
EMConfig.NumPixelsPerVoxel_px = 1
VSDAEMInstance = MySim.AddVSDAEM(EMConfig)

VSDAEMInstance.DefineScanRegion([-4, -4, -4], [4, 4, 4], [0,0,0])
VSDAEMInstance.QueueRenderOperation()
VSDAEMInstance.WaitForRender()

VSDAEMInstance.PrepareNeuroglancerDataset()
VSDAEMInstance.WaitForConversion()
print(f"URL: {VSDAEMInstance.GetNeuroglancerDatasetURL()}")

```

---

This will yield the following render:

![Default Render Example](EMDemos/DefaultConfig.png)



## Full Example

If you'd like to start with a full working example, please see the following code:

```python
#!/bin/python3

import argparse

import BrainGenix.NES as NES

# Handle Arguments for Host, Port, etc
Parser = argparse.ArgumentParser(description="BrainGenix-API Simple Python Test Script")
Parser.add_argument("-Host", default="localhost", type=str, help="Host to connect to")
Parser.add_argument("-Port", default=8000, type=int, help="Port number to connect to")
Parser.add_argument("-UseHTTPS", default=False, type=bool, help="Enable or disable HTTPS")
Args = Parser.parse_args()


# Create Client Configuration For Local Simulation
print(" -- Creating Client Configuration For Local Simulation")
ClientCfg = NES.Client.Configuration()
ClientCfg.Mode = NES.Client.Modes.Remote
ClientCfg.Host = Args.Host
ClientCfg.Port = Args.Port
ClientCfg.UseHTTPS = Args.UseHTTPS
ClientCfg.AuthenticationMethod = NES.Client.Authentication.Password
ClientCfg.Username = "Admonishing"
ClientCfg.Password = "Instruction"

# Create Client Instance
print(" -- Creating Client Instance")
ClientInstance = NES.Client.Client(ClientCfg)
assert ClientInstance.IsReady()

# Create A New Simulation
print(" -- Creating Simulation")
SimulationCfg = NES.Simulation.Configuration()
SimulationCfg.Name = "My First Simulation"
SimulationCfg.Seed = 0
MySim = ClientInstance.CreateSimulation(SimulationCfg)

# Create Sphere
SphereCfg = NES.Shapes.Sphere.Configuration()
SphereCfg.Name = "Left Soma"
SphereCfg.Radius_um = 2.4
SphereCfg.Center_um = [0, 0, 0]
MySphere = MySim.AddSphere(SphereCfg)

# Create Compartments
print(" -- Creating BS Compartment With Sphere")
Cfg = NES.Models.Compartments.BS.Configuration()
Cfg.Name = "Left Soma"
Cfg.SpikeThreshold_mV = 0.0
Cfg.DecayTime_ms = 0.0
Cfg.MembranePotential_mV = 0.0
Cfg.RestingPotential_mV = 0.0
Cfg.AfterHyperpolarizationAmplitude_mV = 0.0
Cfg.Shape = MySphere
MySphereCompartment = MySim.AddBSCompartment(Cfg)


# Setup VSDA Renderer
print(" -- Setting Up VSDA EM Renderer")
EMConfig = NES.VSDA.EM.Configuration()
EMConfig.PixelResolution_um = 0.01
EMConfig.ImageWidth_px = 512
EMConfig.ImageHeight_px = 512
EMConfig.SliceThickness_um = 0.02
EMConfig.ScanRegionOverlap_percent = 0
EMConfig.MicroscopeFOV_deg = 50
EMConfig.NumPixelsPerVoxel_px = 1
VSDAEMInstance = MySim.AddVSDAEM(EMConfig)

VSDAEMInstance.DefineScanRegion([-4, -4, -4], [4, 4, 4], [0,0,0])
VSDAEMInstance.QueueRenderOperation()
VSDAEMInstance.WaitForRender()

VSDAEMInstance.PrepareNeuroglancerDataset()
VSDAEMInstance.WaitForConversion()
print(f"URL: {VSDAEMInstance.GetNeuroglancerDatasetURL()}")

```


In the next guide, we'll dive into the available presets for the virtual microscope.


---

*This documentation is provided by BrainGenix, a division of Carboncopies Foundation R&D. BrainGenix is a platform focused on advancing the field of whole-brain-emulation and computational neuroscience. BrainGenix is part of the CarbonCopies Foundation, a 501\(c)3 non-profit organization dedicated to researching and promoting whole brain emulation. Learn more about CarbonCopies at https://carboncopies.org. For any queries or feedback regarding BrainGenix projects or documentation, please write to us at contact@carboncopies.org.*