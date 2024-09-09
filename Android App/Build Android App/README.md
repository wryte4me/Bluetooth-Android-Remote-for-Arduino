# ANDROID REMOTE (Mobile App - MIT App Inventor 2)

## Overview

This project involves controlling a robot via Bluetooth commands sent from an Android app. The robot can move forward, backward, turn left, turn right, stop, use a tool, and switch between manual and auto modes. The mobile app, created using MIT App Inventor 2, handles the communication between the robot and the Android device.

## Building the Mobile App

### Preparation

To build the Android app, follow these steps:

#### 1. **Opening MIT App Inventor**

- Visit the [MIT App Inventor website](https://appinventor.mit.edu/).
- Click on the "Create Apps!" button to access the MIT App Inventor development environment.
- Sign in with your Google account.

#### 2. **Importing the `.aia` File**

- In the MIT App Inventor environment, go to the top menu and select **Projects** > **Import project (.aia) from my computer**.
- Browse for the `.aia` file provided for this project and upload it.

#### 3. **Modifying the Icons**

- Prepare your customized icons for the app buttons. Refer to the [Generate-Icons README](#) for instructions on generating icons.
- In the project, locate the **Media** section on the right-hand side.
- Upload your custom icons for each button (such as forward, backward, left, right, stop, tool, manual mode, auto mode, etc.) by clicking on **Upload File** and selecting the appropriate images.
- A warning will appear if there's an existing file with the same name. Click **OK** to overwrite and replace the default images in the app designer.

#### 4. **Renaming the App**

- To rename the app, click on **Project** > **Project Properties** in the top menu.
- Update the **App Name** field to your desired name for the app.
- Save the changes.

---

## Explanation of Code Blocks

The app uses various code blocks to handle Bluetooth connection, robot navigation, and mode changes. Below is an explanation of each set of code blocks.

### Bluetooth Connection and Disconnection with Text-to-Speech (TTS)

```block
// Blocks to handle Bluetooth connection and disconnection with TTS.
When BluetoothClient1.Connect
  If successful: 
    Call TextToSpeech1.Speak("Connected to robot") // Inform the user via text-to-speech that the connection is successful.
  Else:
    Call TextToSpeech1.Speak("Failed to connect")  // Inform the user if the connection fails.

When DisconnectButton.Click
  Call BluetoothClient1.Disconnect
  Call TextToSpeech1.Speak("Disconnected") // Use TTS to notify the user that the connection has been terminated.
```

- **Purpose**: These blocks manage the Bluetooth connection and disconnection processes while providing feedback using TTS to inform the user of the connection status.

### Navigation Control (Forward, Backward, Left, Right, Stop)

The robot movement is controlled using `TouchDown` and `TouchUp` events. Upon pressing a movement button (`TouchDown`), the robot moves in the specified direction, and when the button is released (`TouchUp`), the robot stops.

```block
// Modified blocks to handle navigation (forward, backward, left, right) using TouchDown and TouchUp for stop functionality.
When ForwardButton.TouchDown
  Call BluetoothClient1.SendText("1")  // Send command '1' to move forward when the forward button is pressed.

When ForwardButton.TouchUp
  Call BluetoothClient1.SendText("5")  // Send command '5' to stop when the forward button is released.

When BackwardButton.TouchDown
  Call BluetoothClient1.SendText("2")  // Send command '2' to move backward when the backward button is pressed.

When BackwardButton.TouchUp
  Call BluetoothClient1.SendText("5")  // Send command '5' to stop when the backward button is released.

When LeftButton.TouchDown
  Call BluetoothClient1.SendText("3")  // Send command '3' to turn left when the left button is pressed.

When LeftButton.TouchUp
  Call BluetoothClient1.SendText("5")  // Send command '5' to stop when the left button is released.

When RightButton.TouchDown
  Call BluetoothClient1.SendText("4")  // Send command '4' to turn right when the right button is pressed.

When RightButton.TouchUp
  Call BluetoothClient1.SendText("5")  // Send command '5' to stop when the right button is released.
```

- **Purpose**: These blocks handle navigation commands. The corresponding movement command is sent to the robot when a directional button (Forward, Backward, Left, Right) is pressed, and the stop command (`5`) is sent when the button is released.

### Auto, Manual, and Tool Mode Handling

```block
// Blocks to handle auto, manual, and tool mode
When AutoModeButton.Click
  Call BluetoothClient1.SendText("6")  // Send command '6' to switch to auto mode.

When ManualModeButton.Click
  Call BluetoothClient1.SendText("7")  // Send command '7' to switch to manual mode.

When ToolButton.Click
  Call BluetoothClient1.SendText("8")  // Send command '8' to execute the tool command.
```

- **Purpose**: These blocks manage switching between different robot modes. When the Auto Mode button is clicked, command `6` is sent to the robot. Similarly, clicking the Manual Mode button sends command `7`, and the Tool button sends command `8` to execute the tool command.

---

## Testing the App

### 1. **Compiling the App**

- After finalizing your design and functionality, click on **Build** > **App (provide QR code for .apk)**.
- Wait for the app to compile, and a QR code will appear. Use the MIT AI2 Companion app on your Android device to scan the code and install the app.

### 2. **Pairing the Robot with Android Device**

- Turn on Bluetooth on your Android device and pair it with your robot's Bluetooth module.
- Open the app on your Android device.
- Click on the **Connect** button in the app, and select the Bluetooth device from the list.

### 3. **Controlling the Robot**

- Use the directional buttons (Forward, Backward, Left, Right) to control the movement of the robot.
- Click and hold the buttons to move, and release to stop.
- Switch between manual and auto modes using the **Manual Mode** and **Auto Mode** buttons.
- Use the **Tool** button to activate any additional functionality on your robot.

---

## Customization

- **Icons**: You can customize the icons for each control button. Ensure that your icons match the required size and are named properly when replacing the default ones.
- **Commands**: If the robot uses different Bluetooth commands, you can modify the code blocks to send the appropriate commands by changing the text inside the `SendText` method for each button.
- **Text-to-Speech**: The TTS messages can be changed to your preference in the Bluetooth connection and disconnection blocks.

---

## Troubleshooting

- **Bluetooth Connection Fails**: Make sure your robot's Bluetooth module is powered on and the device is paired with your Android phone.
- **Commands Not Working**: Check that the commands being sent from the app match the commands recognized by the robot's microcontroller code.
- **App Crashing**: Review any modifications made to the code blocks and ensure there are no syntax errors or broken logic.

---

## Additional Resources

- MIT App Inventor Official Documentation: [https://appinventor.mit.edu/explore/ai2/tutorials](https://appinventor.mit.edu/explore/ai2/tutorials)
- Generating App Icons: Refer to the [Generate-Icons README](#) for details on creating custom icons for the app.
