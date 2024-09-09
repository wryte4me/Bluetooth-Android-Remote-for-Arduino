
# Icon Generator (PPT + VB)

This VBS script exports PowerPoint slides as PNG images with predefined names and dimensions. It is designed to generate icons from a PowerPoint presentation with each slide corresponding to a specific icon file name. The script creates a timestamped folder inside an "Icons" folder to store the PNG exports without overwriting existing files.

---

## How to Use

### 1. Place the Files in the Same Folder
- Ensure that both the script (`exportIcons.vbs`) and the PowerPoint file (`AndroidBluetoothController.pptx`) are located in the same folder.
- The PowerPoint file should contain the slides you want to export as icons.

### 2. Editing the PowerPoint File
- Replace each slide in the PowerPoint file with the desired icon design while **keeping the same number of slides**.
- The icon filenames that will be generated **cannot be changed**, so ensure the content of each slide corresponds to the correct icon based on the list below.

---

### 3. Predefined Filenames and Slide Correspondence
Each slide in the PowerPoint file corresponds to a predefined icon name in the script. Below is the mapping of slide numbers to the exported filenames:

| Slide Number | Exported Filename |
|--------------|-------------------|
| 1            | `arrowUp.png`      |
| 2            | `arrowDown.png`    |
| 3            | `arrowLeft.png`    |
| 4            | `arrowRight.png`   |
| 5            | `tool.png`         |
| 6            | `manualMode.png`   |
| 7            | `autoMode.png`     |
| 8            | `logo.png`         |

Ensure that your PowerPoint file has exactly 8 slides, each containing the desired content for the corresponding icon name. **Do not change the order of the slides**, as the script expects them to match this order.

---

### 4. Running the Script
- To run the script, double-click `exportIcons.vbs`. It will automatically create a folder named `Icons` in the same directory, and within it, a subfolder named with the current date and time in the format `MMDDYYYY-HH-MM-SS`.
- The PNG files for each slide will be saved in this timestamped folder.
---

### 5. Output Folder:

- The output PNG files are saved inside a folder named after the date and time when the script was run. This ensures that no files are overwritten if you run the script multiple times.

- The folder structure will look like this:
```
Icons/
└── MMDDYYYY_HH-MM-SS/
    ├── arrowUp.png
    ├── arrowDown.png
    ├── arrowLeft.png
    ├── arrowRight.png
    ├── tool.png
    ├── manualMode.png
    ├── autoMode.png
    └── logo.png
```
---
  
### 6. Customization
If you want to customize the script, here's what you can do:

#### Change the Output Filenames
You can modify the fileNames array to specify different filenames for the slides. Update the array with your desired filenames as shown below:
```vb
' Define the filenames for each slide
fileNames = Array("newIconName1", "newIconName2", "newIconName3", "newIconName4", "newIconName5", "newIconName6", "newIconName7", "newIconName8")
```
Make sure the number of filenames corresponds to the number of slides in the presentation.
#### 2. **Change the Image Dimensions**
You can adjust the size of the exported PNG files by changing the width and height values in the script. The current default size is `1024x1024` pixels.

```vb
' Export the slide as a PNG file with custom size (width, height)
pptPresentation.Slides(i).Export slidePath, "PNG", 800, 800
```

Replace `800, 800` with the desired dimensions.

---
