# Allxon Hello OTA Artifact Example
This example shows you how to prepare your wanted OTA files, including all the attachments and the deployment script before the artifact is packed and generated. 

# Hello OTA Example Content Structure
The Allxon Hello OTA folder structure below shows you where to correctly input your files and directories for packaging your first OTA artifact smoothly. 
```
allxon-hello-ota-example-main-windows
├── ota_content
│   └── ota_deploy.bat
│   └── HelloAllxon.bat
│   └── playAscii.bat
│   └── allxonAscii
│       └──00.txt ~ 53.txt
└── README.md
```
- **ota_content**:  The folder where you put all the necessary files you want to deploy to your edge devices over-the-air.
- **ota_deploy.bat**: The executable script that handles all operations related to this OTA deployment. You are allowed to customize the process to suit your needs by transcribing all the corresponding commands into this one automation script, which will be automatically executed by our agent once the artifact is downloaded and unpacked.
- Other files: Example files used for demonstration, could be replaced with your own wanted files. In this example, you’ll see a visualizer being displayed and other OTA attached files being moved around folders. Find the above `ota_deploy.bat` for more details.



# How to Generate OTA Artifact Using Allxon CLI 
Since you are supposed to verify the OTA activity before doing mass deployment, the artifact generation and related testifying operations shown in below need to be done on your at least one **edge device** firstly. 

1. Make sure you have put everything (docker image, firmware, BSP image, application file, software, script, image, video, etc.) you are going to deploy onto your devices into the `ota_content` directory. 
2. Edit `ota_deploy.bat` to suit your needs. (e.g. calling an executable file to execute an action or run an application update).
3. Run PowerShell as administrator and navigate to the directory where allxon-cli tool is placed. 
`$cd 'C:\Program Files\allxon-cli\bin\'`
4. Run `$.\allxon-cli ota make –d {path of the ota_content folder}` to generate an OTA artifact. 
5. Run `$.\allxon-cli ota test -f {file name of the artifact}` to test the Allxon OTA artifact you just generated. This action will simulate OTA deployment by asking the Allxon Agent to execute `ota_deploy.bat`, so please do mind that all the commands in the script are going to be executed on the edge. 
6. Verify if the deployment operation is executed as expected as specified in `ota_deploy.bat`.

> [!NOTE]
> The OTA artifact is architecture-sensitive for execution, and by default, the artiface owns the same architecture of the platform who generates it. (e.g. x86_64 or aarch64). 
> But in the meanwhile, Allxon CLI also offer cross-platform artifact creation, such as generating aarch64 artifacts on an x86 platform for development purposes. More details are available in [here](https://github.com/allxon/allxon-cli/blob/master/ota.md).
   
# What is Next
Once you have generated your Allxon Artifact, head over to [Allxon Portal](https://dms.allxon.com/) to start performing OTA updates from the cloud portal to fleets of edge devices! 

Follow the instrustions to [deploy Allxon OTA artifact](https://www.allxon.com/knowledge/deploy-ota-artifact).
