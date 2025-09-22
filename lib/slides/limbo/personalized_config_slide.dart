import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:notes_app/notes_app.dart';

import '../../extensions/extensions.dart';

class PersonalizedConfigSlide extends FlutterDeckSlideWidget {
  const PersonalizedConfigSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/personalized-config',
          title: 'DEMO: Personalized configuration',
          header: FlutterDeckHeaderConfiguration(
            title: 'Personalized configuration - smart A/B testing',
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
              context.getThemeAssetName('personalized-config.png'),
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
            screen: NotesApp(showPromoBanner: _value > 250),
          ),
        ),
        Slider(value: _value, max: 1000.0, onChanged: _updateValue),
        Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 16.0,
          children: [
            Text(
              'App spend: \$${_value.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ],
        ),
      ],
    );
  }
}
