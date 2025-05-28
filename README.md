# From fear to air: embracing over-the-air app updates

![Header image](header.png)

Repeat after me: app updates are stressful. Dealing with app store reviews and worrying about disrupting users can make anyone hesitant to release new features. But what if there was a better way? Over-the-air (OTA) updates let you deliver changes directly to your users, super fast and without any fuss. In this talk, we’ll explore various OTA update techniques, from simple tools to advanced methods like code push for instant fixes, feature flags for controlled rollouts and A/B testing, server-driven UI for dynamic content, and even generative AI for personalized experiences.

Powered by [flutter_deck](https://flutterdeck.dev/) 🚀

Deployed on [kazlauskas.dev](https://kazlauskas.dev/ota-app-updates) 🎉

---

## Building

You can follow these instructions to build the slides and run them locally.

### Prerequisites

If you are new to Flutter, please first follow the [Flutter Setup](https://flutter.dev/setup/) guide.

### Building and running the slides

To build and run the slides, run the following commands:

```
git clone git@github.com:mkobuolys/over-the-air-updates-talk.git
cd over-the-air-updates-talk
flutter pub get
flutter run
```

The `flutter run` command both builds and runs the Flutter app on your device, browser or emulator.

For the best experience, use the macOS build with the `--release` flag:

```
flutter run -d macos --release
```

### Running a short version of the slides

To run a short version of the slides, which is suitable for a 10-minute talk, you can pass the `USE_SHORT_VERSION` environment variable to the app. You can do this by using the `--dart-define` flag when running the app:

```
flutter run --dart-define USE_SHORT_VERSION=true
```

### Enabling generative AI features

To enable the generative AI features in the slides (using Gemini), you need to pass the `GEMINI_API_KEY` environment variable to the app. You can do this by using the `--dart-define` flag when running the app:

```
flutter run --dart-define GEMINI_API_KEY=your_api_key
```

You can get your API key from the [Google AI Studio](https://aistudio.google.com). Do not forget to replace `your_api_key` with your actual API key. Make sure to keep your API key secret and do not share it with anyone.
