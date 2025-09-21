import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:notes_app/notes_app.dart';

import '../../extensions/extensions.dart';

class AbTestingSlide extends FlutterDeckSlideWidget {
  const AbTestingSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/ab-testing',
          title: 'DEMO: A/B testing',
          header: FlutterDeckHeaderConfiguration(
            title: 'A/B Testing - feature flag + analytics',
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
            child: Image.asset(context.getThemeAssetName('ab-test.png')),
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
  var _showAiButtonAsFab = true;

  void _setShowAiButtonAsFab(bool value) {
    setState(() => _showAiButtonAsFab = value);
  }

  @override
  Widget build(BuildContext context) {
    return RadioGroup<bool>(
      groupValue: _showAiButtonAsFab,
      onChanged: (value) => _setShowAiButtonAsFab(value!),
      child: Column(
        spacing: 16.0,
        children: [
          Expanded(
            child: DeviceFrame(
              device: Devices.ios.iPhone13,
              screen: NotesApp(aiButtonAsFab: _showAiButtonAsFab),
            ),
          ),
          RadioListTile(
            value: true,
            title: Text(
              'A: Floating action button',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          RadioListTile(
            value: false,
            title: Text(
              'B: Bottom bar button',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
        ],
      ),
    );
  }
}
