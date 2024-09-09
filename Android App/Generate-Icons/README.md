Here's a sample `README.txt` file that explains how to use the script, modify the filenames, and addresses other key points such as the importance of the order of filenames and slides, as well as the location of the PowerPoint file:

---

## README: PowerPoint Slide Exporter Script

### Purpose
This VBScript (`export_ppt_to_png.vbs`) exports each slide from a PowerPoint presentation as a PNG image. The exported images will be named according to a predefined list of filenames and saved in an automatically created "Icons" folder within the same directory where the script is located.

---

### How to Use the Script

1. **Ensure PowerPoint is Installed**:
   This script requires Microsoft PowerPoint to be installed on your system. The script will not work without it.

2. **Locate the Script**:
   Place the script (`export_ppt_to_png.vbs`) in the same folder where your PowerPoint file (`.pptx`) is located.

3. **Prepare the PowerPoint File**:
   Ensure that your PowerPoint file is properly organized and contains the correct number of slides. The script will compare the number of slides with the number of predefined filenames (discussed below).

4. **Run the Script**:
   - You can run the script by double-clicking on it or by executing it through the command line using `wscript.exe` or `cscript.exe`.
   - The script will automatically create an "Icons" folder (if it doesn't already exist) in the same directory as the script and PowerPoint file. It will save the exported PNG images in this folder.
   - A message box will inform you when the export process is complete.

---

### Modifying the Script

#### Changing the PowerPoint File Location and Name

By default, the script is configured to look for a PowerPoint file in the same directory as the script. The script automatically detects the location of the folder it is run from, so no changes are needed if the `.pptx` file is placed in the same folder.

If you want to use a different PowerPoint file from another location, you can modify this section of the script:

```vbscript
pptFilePath = scriptPath & "\AndroidBluetoothController.pptx"
```

Replace `"AndroidBluetoothController.pptx"` with the filename of your PowerPoint file, ensuring you provide the full path if the file is located elsewhere.

#### Changing the Output Filenames for the Slides

The script exports slides as PNG images using predefined filenames stored in an array. You can modify these filenames to suit your needs.

```vbscript
fileNames = Array("arrowUp", "arrowDown", "arrowLeft", "arrowRight", "tool", "manualMode", "autoMode")
```

Each string inside the `Array` corresponds to a slide in your PowerPoint presentation. Change the strings inside the array to the desired names for your slide images.

For example, to change the first filename from `arrowUp` to `forwardArrow`, modify the array as follows:

```vbscript
fileNames = Array("forwardArrow", "arrowDown", "arrowLeft", "arrowRight", "tool", "manualMode", "autoMode")
```

#### Important: Matching the Number of Filenames and Slides

It is **essential** that the number of filenames in the `fileNames` array matches the number of slides in the PowerPoint presentation. If there are more or fewer slides than filenames, the script will display an error and exit. You must either add or remove filenames from the array to ensure the count is correct.

---

### Important Notes

1. **Order of Filenames and Slides**:
   The filenames in the array correspond to the order of the slides in the PowerPoint presentation. The first filename in the array will be used for the first slide, the second for the second slide, and so on. This order is important, so make sure that the filenames match the intended content of the slides.

2. **Slide Export Size**:
   By default, each slide is exported as a 1024x1024 PNG image. You can modify the size by adjusting the width and height values in the following line:

   ```vbscript
   pptPresentation.Slides(i).Export slidePath, "PNG", 1024, 1024
   ```

   Change `1024, 1024` to the desired dimensions (width, height).

3. **Output Folder**:
   The images will be saved in a folder called "Icons" in the same directory as the script. If the folder doesn't already exist, the script will create it automatically.

---

### Troubleshooting

- If the script fails to run, ensure that PowerPoint is properly installed on your machine.
- Make sure that the PowerPoint file is located in the same directory as the script (or update the path in the script as explained above).
- Verify that the number of filenames matches the number of slides in the PowerPoint presentation.
- Ensure the PowerPoint file isn't open in another application while running the script.

---

### Example Setup

- **PowerPoint File**: `AndroidBluetoothController.pptx` in the same directory as `export_ppt_to_png.vbs`.
- **Icons Folder**: Automatically created in the same directory to store exported PNG images.
- **Filenames for Slides**: `"arrowUp.png"`, `"arrowDown.png"`, etc., based on the content of the slides.

---

### License and Credits

This script was written to simplify the export of PowerPoint slides as PNG images. Feel free to modify and use it in your projects.

---

This `README.txt` provides a clear guide on how to use and modify the script, including details on changing filenames, understanding the importance of the order of filenames and slides, and how to adjust the PowerPoint file location.