# Creating a Simulation

Creating a client instance is fairly easy - you simply need to use the following configuration example.

The provided username and password are the defaults, and may vary baesd on the confguration of your instance.

The assert statement is reccomended to check that the client is actually live and can talk with the server.


```python

import BrainGenix.NES as NES

# Create Client Instance
ClientCfg = NES.Client.Configuration()
ClientCfg.Mode = NES.Client.Modes.Remote
ClientCfg.Host = Args.Host
ClientCfg.Port = Args.Port
ClientCfg.UseHTTPS = Args.UseHTTPS
ClientCfg.AuthenticationMethod = NES.Client.Authentication.Password
ClientCfg.Username = "Admonishing"
ClientCfg.Password = "Instruction"

ClientInstance = NES.Client.Client(ClientCfg)

assert(ClientInstance.IsReady())

```


---

*This documentation is provided by BrainGenix, a division of Carboncopies Foundation R&D. BrainGenix is a platform focused on advancing the field of whole-brain-emulation and computational neuroscience. BrainGenix is part of the CarbonCopies Foundation, a 501\(c)3 non-profit organization dedicated to researching and promoting whole brain emulation. Learn more about CarbonCopies at https://carboncopies.org. For any queries or feedback regarding BrainGenix projects or documentation, please write to us at contact@carboncopies.org.*