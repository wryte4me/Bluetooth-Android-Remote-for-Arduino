# Android Remote AI2

## Description

This repository contains a project for controlling a robot via Bluetooth commands using an Android app and managing related functionality through Platform IO files. The project is divided into two main components:

1. **Android App**: Created with MIT App Inventor 2, this app controls the robot via Bluetooth commands.
2. **Platform IO**: Contains the firmware and configuration files for managing the robot's behavior and Bluetooth communication.

## Directory Structure

- **Android App**: Contains files related to the mobile app developed using MIT App Inventor 2.
  - **/Generate-Icons**: Resources and instructions for generating custom icons for the Android app.
  - **/Build Android App**: Instructions for building and modifying the Android app.

- **Platform IO**: Includes Platform IO files for firmware development.
  - **platformio.ini**: Configuration file for Platform IO.
  - **src/**: Source code for the robot's firmware.

## Modifying the Project

### Android App

#### Customizing Icons

1. **Prepare Icons**:
   - Refer to the [Generate-Icons README](Android%20App/Generate-Icons) for instructions on how to create and prepare custom icons for the app buttons.

2. **Upload Icons**:
   - Open MIT App Inventor 2.
   - Go to **Media** in the project.
   - Upload your custom icons by clicking **Upload File**. Ensure that you overwrite any existing files with the same name to update the app's design.

#### Building the App

1. **Import the Project**:
   - Go to [MIT App Inventor](https://appinventor.mit.edu/), sign in, and import the `.aia` file for the project via **Projects** > **Import project (.aia) from my computer**.

2. **Modify the App**:
   - Change the app’s name by going to **Project** > **Project Properties** and updating the **App Name** field.

3. **Compile the App**:
   - Click on **Build** > **App (provide QR code for .apk)** to compile the app. Scan the QR code with MIT AI2 Companion to test the app on an Android device.

### Platform IO

#### Configuring Firmware

1. **Edit Configuration**:
   - Open `platformio.ini` to configure build settings and dependencies for the firmware.

2. **Modify Source Code**:
   - Navigate to the `src/` directory to modify or add source code files. This is where you can change how the robot responds to Bluetooth commands and manage its behavior.

3. **Upload Firmware**:
   - Use Platform IO to build and upload the firmware to the robot. This can be done through the Platform IO interface in VS Code or by using command-line tools.

## Additional Resources

- [MIT App Inventor Documentation](https://appinventor.mit.edu/explore/ai2/tutorials): Guides and tutorials for using MIT App Inventor 2.
- [Platform IO Documentation](https://docs.platformio.org/en/latest/): Resources for configuring and using Platform IO.

## Troubleshooting

- **Android App Issues**:
  - Ensure that the correct icons are uploaded and that they match the required sizes.
  - Verify Bluetooth commands in the app match those expected by the robot's firmware.

- **Platform IO Issues**:
  - Check `platformio.ini` for correct configuration settings.
  - Review firmware code for compatibility with your hardware.

