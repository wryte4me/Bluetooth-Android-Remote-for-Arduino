' VBS Script to export PowerPoint slides as PNG images with specific names and size

' Define the PowerPoint application and presentation objects
Set pptApp = CreateObject("PowerPoint.Application")
pptApp.Visible = True

' Get the folder where the script is located
Set fso = CreateObject("Scripting.FileSystemObject")
scriptPath = fso.GetParentFolderName(WScript.ScriptFullName)

' Open the PowerPoint presentation from the same directory as the script
pptFilePath = scriptPath & "\AndroidBluetoothController.pptx"
Set pptPresentation = pptApp.Presentations.Open(pptFilePath)

' Create the "Icons" folder in the same directory as the script if it doesn't exist
outputFolder = scriptPath & "\Icons\"
If Not fso.FolderExists(outputFolder) Then
    fso.CreateFolder(outputFolder)
End If

' Get the current date and time
currentDateTime = Now
formattedDateTime = FormatDateTime(currentDateTime, vbShortDate) & " " & FormatDateTime(currentDateTime, vbLongTime)

' Replace slashes, colons, and spaces from the date-time string for folder name compatibility
formattedDateTime = Replace(formattedDateTime, "/", "")
formattedDateTime = Replace(formattedDateTime, ":", "-")
formattedDateTime = Replace(formattedDateTime, " ", "_")

' Create a new folder with the current date and time inside the "Icons" folder
dateTimeFolder = outputFolder & formattedDateTime & "\"
If Not fso.FolderExists(dateTimeFolder) Then
    fso.CreateFolder(dateTimeFolder)
End If

' Define the filenames for each slide
Dim fileNames
fileNames = Array("arrowUp", "arrowDown", "arrowLeft", "arrowRight", "tool", "manualMode", "autoMode", "logo")

' Check if the number of slides matches the number of predefined filenames
If pptPresentation.Slides.Count <> UBound(fileNames) + 1 Then
    MsgBox "Number of slides does not match the number of predefined filenames!", vbExclamation
    pptPresentation.Close
    pptApp.Quit
    WScript.Quit
End If

' Loop through each slide and export it as PNG
For i = 1 To pptPresentation.Slides.Count
    slideName = fileNames(i - 1) ' Get the corresponding filename from the array
    slidePath = dateTimeFolder & slideName & ".png" ' Set the full path for the output file
    
    ' Export the slide as a PNG file
    pptPresentation.Slides(i).Export slidePath, "PNG", 1024, 1024
Next

' Close the presentation and quit PowerPoint
pptPresentation.Close
pptApp.Quit

' Inform the user that the process is complete
MsgBox "Slides have been successfully exported as PNG images.", vbInformation
