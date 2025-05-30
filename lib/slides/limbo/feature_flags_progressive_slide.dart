import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:notes_app/notes_app.dart';

import '../../extensions/extensions.dart';

class FeatureFlagsProgressiveSlide extends FlutterDeckSlideWidget {
  const FeatureFlagsProgressiveSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/feature-flags-progressive',
            header: FlutterDeckHeaderConfiguration(
              title: 'Feature flags - progressive',
            ),
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
            child: Image.asset(
              context.getThemeAssetName('feature-flag-progressive.png'),
            ),
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
  var _value = 0.0;

  void _updateValue(double value) {
    setState(() => _value = value);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16.0,
      children: [
        Expanded(
          child: DeviceFrame(
            device: Devices.ios.iPhone13,
            screen: NotesApp(aiEnabled: _value >= 0.4),
          ),
        ),
        Slider(
          value: _value,
          onChanged: _updateValue,
          label: '${(_value * 100).toInt()}%',
          divisions: 10,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 16.0,
          children: [
            Text(
              'Rollout percentage: ${(_value * 100).toInt()}%',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ],
        ),
      ],
    );
  }
}
