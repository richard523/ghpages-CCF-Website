# Geometric Shapes

The BrainGenix-Client library provides three fundamental geometric shapes: spheres, cylinders, and boxes, which can be used in various neural simulations and visualizations. This page offers a brief overview of each shape followed by examples of how they can be created and configured within your simulation environment.


## Overview of Geometric Shapes

- **Sphere**: Represents a three-dimensional ball with a given radius and center position. It can be used to model cellular structures or other round objects in your neural network simulation.
- **Cylinder**: Models a three-dimensional object that extends infinitely in two directions along two parallel lines (the cylinder's axis) but is bounded by two parallel planes (the cylinder's bases). It's useful for simulating axon-like structures or other elongated entities.
- **Box**: Represents a three-dimensional rectangular prism with specified dimensions and positioning. It's ideal for simulating cuboidal compartments or regions within your neural model.


### Sphere Setup Example
```python
# Create Sphere Configuration
SphereCfg = NES.Shapes.Sphere.Configuration()
SphereCfg.Name = "My Sphere"
SphereCfg.Radius_um = 10.0  # Radius in micrometers
SphereCfg.Center_um = [2, 11, 11]  # Center position in micrometers

# Create Sphere instance in the simulation
MySphere = MySim.AddSphere(SphereCfg)
```
In this example, we define a sphere named `My Sphere` with a radius of 10 micrometers (`um`) centered at `[2, 11, 11]`. This sphere can then be used to create compartments or other elements in your simulation.

### Cylinder Setup Example
```python
# Create Cylinder Configuration
CylinderCfg = NES.Shapes.Cylinder.Configuration()
CylinderCfg.Name = "My Cylinder"
CylinderCfg.Point1Position_um = [0, 7.5, 0]  # First base position in micrometers
CylinderCfg.Point2Position_um = [0, 7.5, 3]  # Second base position in micrometers
CylinderCfg.Point1Radius_um = 0.7  # Radius of the first base in micrometers
CylinderCfg.Point2Radius_um = 2    # Radius of the second base in micrometers (the radius can be different)

# Create Cylinder instance in the simulation
MyCylinder = MySim.AddCylinder(CylinderCfg)
```
This example shows how to set up a cylinder named `My Cylinder` that extends along the z-axis from `[0, 7.5, 0]` to `[0, 7.5, 3]`. It has different radii at its bases: 0.7 micrometers at `[0, 7.5, 0]` and 2 micrometers at `[0, 7.5, 3]`.

### Box Setup Example
```python
# Create Box Configuration
BoxCfg = NES.Shapes.Box.Configuration()
BoxCfg.Name = "My Box"
BoxCfg.CenterPosition_um = [13, 11, -1]  # Center position in micrometers
BoxCfg.Dimensions_um = [20, 20, 8]       # Length, width, height in micrometers
BoxCfg.Rotation_rad = [0, 0, 0.785398]   # Rotation angles in radians around x, y, z axes

# Create Box instance in the simulation
MyBox = MySim.AddBox(BoxCfg)
```
Here, we define a box named `My Box` that is centered at `[13, 11, -1]`. It has dimensions of `[20, 20, 8]` micrometers and a rotation of 0.785398 radians around the z-axis.


## Using Geometric Shapes in Compartments


Once you've created your geometric shapes, you can use them as the basis for defining compartments in your neural simulation using the `NES.Models.Compartments` module. Below are examples of how to create compartments using each shape:

### Sphere Compartment Example
```python
# Create BS Compartment Configuration
Cfg = NES.Models.Compartments.BS.Configuration()
Cfg.Name = "My Compartment 1"
Cfg.SpikeThreshold_mV = 0.0  # Threshold voltage in millivolts for firing spikes (optional)
Cfg.DecayTime_ms = 0.0       # Decay time in milliseconds (optional)
Cfg.MembranePotential_mV = 0.0  # Membrane potential in millivolts (optional)
Cfg.RestingPotential_mV = 0.0  # Resting potential in millivolts (optional)
Cfg.AfterHyperpolarizationAmplitude_mV = 0.0  # After-hyperpolarization amplitude in millivolts (optional)
Cfg.Shape = MySphere          # The shape of the compartment (either MySphere or MyBox)

# Create Sphere Compartment instance in the simulation
MySphereCompartment = MySim.AddBSCompartment(Cfg)
```
In this example, we create a Ball-and-Stick (BS) compartment named `My Compartment 1` that uses `MySphere` as its shape. You can customize spike threshold, decay time, membrane potential, resting potential, and after-hyperpolarization amplitude according to your model requirements.

---

*This documentation is provided by BrainGenix, a division of Carboncopies Foundation R&D. BrainGenix is a platform focused on advancing the field of whole-brain-emulation and computational neuroscience. BrainGenix is part of the CarbonCopies Foundation, a 501\(c)3 non-profit organization dedicated to researching and promoting whole brain emulation. Learn more about CarbonCopies at https://carboncopies.org. For any queries or feedback regarding BrainGenix projects or documentation, please write to us at contact@carboncopies.org.*