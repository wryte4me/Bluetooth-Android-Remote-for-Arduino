' VBS Script to export PowerPoint slides as PNG images with specific names and size

' Error handling in case PowerPoint is not available
On Error Resume Next

' Create FileSystemObject to manage files and folders
Set fso = CreateObject("Scripting.FileSystemObject")

' Get the folder path where the script is located
scriptPath = fso.GetParentFolderName(WScript.ScriptFullName)

' Define path to the PowerPoint file (assumed to be in the same folder as the script)
pptFilePath = scriptPath & "\AndroidBluetoothController.pptx"

' Check if the PowerPoint file exists before proceeding
If Not fso.FileExists(pptFilePath) Then
    MsgBox "PowerPoint file not found in the script's folder!", vbExclamation
    WScript.Quit
End If

' Create the "Icons" folder if it does not exist
outputFolder = scriptPath & "\Icons\"
If Not fso.FolderExists(outputFolder) Then
    fso.CreateFolder(outputFolder)
End If

' Create PowerPoint Application object
Set pptApp = CreateObject("PowerPoint.Application")
If Err.Number <> 0 Then
    MsgBox "PowerPoint application could not be started. Please check your installation.", vbCritical
    WScript.Quit
End If

' Make PowerPoint visible
pptApp.Visible = True

' Open the PowerPoint file
Set pptPresentation = pptApp.Presentations.Open(pptFilePath)
If Err.Number <> 0 Then
    MsgBox "Unable to open PowerPoint file.", vbCritical
    pptApp.Quit
    WScript.Quit
End If

' Define filenames for each slide
Dim fileNames
fileNames = Array("arrowUp", "arrowDown", "arrowLeft", "arrowRight", "tool", "manualMode", "autoMode")

' Check if the number of slides matches the predefined filenames
If pptPresentation.Slides.Count <> UBound(fileNames) + 1 Then
    MsgBox "Number of slides does not match the number of predefined filenames!", vbExclamation
    pptPresentation.Close
    pptApp.Quit
    WScript.Quit
End If

' Loop through each slide and export as PNG
For i = 1 To pptPresentation.Slides.Count
    slideName = fileNames(i - 1)  ' Get the corresponding filename
    slidePath = outputFolder & slideName & ".png"  ' Full path for the output file
    
    ' Export the slide as PNG
    pptPresentation.Slides(i).Export slidePath, "PNG", 1024, 1024
Next

' Close the presentation and quit PowerPoint
pptPresentation.Close
pptApp.Quit

' Inform user the process is complete
MsgBox "Slides have been successfully exported as PNG images.", vbInformation

' Reset error handling
On Error GoTo 0
