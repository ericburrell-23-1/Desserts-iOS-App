# Desserts-iOS-App
## Description
This app was built as a project for the Fetch - iOS Coding Challenge. It receives recipe data from http://themealdb.com API and displays it in a manner that is user friendly.

## Instructions
This project is supported by any device running iOS 15.0+. Simply download the repository, compile, and run on any capable device or in the simulator. Unit tests are included and may also be run.

The UI is fairly intuitive. To test all features, scroll through all recipes on the main page, and select a specific recipe to see its detail view. Make sure to have a stable internet connection while using the app.

## Known Issues
This project was built and tested with XCode 14.2 on iOS 16.3. In this version, XCode will display the following ("purple") warning while testing the Desserts app:

*"This method should not be called on the main thread as it may lead to ui unresponsiveness."*

This is triggered by the use of `WKWebView` in the `YoutubeVideoView`. It is a known issue with the WebKit framework, and the warning can be ignored. More information about this issue can be found [here](https://developer.apple.com/forums/thread/714467?answerId=734799022#734799022).
