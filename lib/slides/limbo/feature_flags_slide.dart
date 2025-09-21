import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:notes_app/notes_app.dart';

import '../../extensions/extensions.dart';

class FeatureFlagsSlide extends FlutterDeckSlideWidget {
  const FeatureFlagsSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/feature-flags',
          title: 'DEMO: Feature flags',
          header: FlutterDeckHeaderConfiguration(title: 'Feature flags'),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Row(
        spacing: 64.0,
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(context.getThemeAssetName('feature-flag.png')),
          ),
          const Expanded(flex: 2, child: _NotesApp()),
        ],
      ),
    );
  }
}

class _NotesApp extends StatefulWidget {
  const _NotesApp();

  @override
  State<_NotesApp> createState() => _NotesAppState();
}

class _NotesAppState extends State<_NotesApp> {
  var _featureFlagEnabled = false;

  void _toggleFeatureFlag(bool value) {
    setState(() => _featureFlagEnabled = value);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16.0,
      children: [
        Expanded(
          child: DeviceFrame(
            device: Devices.ios.iPhone13,
            screen: NotesApp(aiEnabled: _featureFlagEnabled),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 16.0,
          children: [
            SizedBox(
              height: 75,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Switch.adaptive(
                  value: _featureFlagEnabled,
                  onChanged: _toggleFeatureFlag,
                ),
              ),
            ),
            Text(
              'AI feature flag: ${_featureFlagEnabled ? 'ON' : 'OFF'}',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ],
        ),
      ],
    );
  }
}
