# TIMER APP GUIDE

## Introduction
This guide provides a comprehensive overview of the Timer App, designed to enhance productivity by allowing users to set timers efficiently.

## Prerequisites
- macOS 11.0 or later
- Xcode 13.0 or later

## Technologies Used
- SwiftUI
- Combine
- AVFoundation

## Setup Instructions
1. Clone the repository: `git clone https://github.com/mariamtabagari27/Timer-app`
2. Open the project in Xcode: `open Timer-app.xcodeproj`
3. Build the project by clicking on `Product` -> `Build` in the top menu.

## Running the Application
- Connect a simulator or a physical device.
- Click the `Run` button in Xcode to start the application.

## Project Structure
- `Sources`: Contains all source code files.
- `Assets`: Holds all images and sound assets.
- `Resources`: Contains non-code resources such as storyboards and configuration files.

## Key Features
- Customizable timer durations.
- Option to set multiple timers.
- Notifications when the timer ends.

## SwiftUI Concepts
- **State**: Managing the timer state for seamless UI updates.
- **Bindings**: Connecting UI elements like sliders to underlying data sources.

## Main Components
- `TimerView`: Displays the timer and user controls.
- `SettingsView`: Allows users to configure app settings.

## Troubleshooting
- If the app crashes on launch, ensure that the Xcode project is properly configured.
- Check for updates to the dependencies used in the application.

## How to Add Custom Sound
1. Add sound files to the `Assets` directory.
2. Use AVFoundation to play the sound upon timer completion.

## Future Enhancements
- Integrating Dark Mode support.
- Adding a history feature to track past timers.

## Useful Shortcuts
- `Command + R`: Run the application.
- `Command + B`: Build the project.

## Resources
- [SwiftUI Documentation](https://developer.apple.com/documentation/swiftui)
- [Combine Documentation](https://developer.apple.com/documentation/combine)

## Getting Help
- If you encounter issues, please open an issue on the GitHub repository or contact support.