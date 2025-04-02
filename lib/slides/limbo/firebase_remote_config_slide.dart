import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _duration = Duration(milliseconds: 500);
const _alignments = [
  Alignment.center,
  Alignment.topRight,
  Alignment.centerLeft,
  Alignment.bottomRight,
];
const _colors = [
  Color(0xFFE57373),
  Color(0xFF81C784),
  Color(0xFF9575CD),
];
const _fontSizes = [
  54.0,
  69.0,
  58.0,
  48.0,
];

class FirebaseRemoteConfigSlide extends FlutterDeckSlideWidget {
  const FirebaseRemoteConfigSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/firebase-remote-config',
            title: 'DEMO: Firebase Remote Config',
            header: FlutterDeckHeaderConfiguration(
              title: 'Configuration files - Firebase Remote Config',
            ),
            steps: 4,
          ),
        );

  @override
  Widget build(BuildContext context) {
    return _SlideContent(
      colors: [Theme.of(context).scaffoldBackgroundColor, ..._colors],
    );
  }
}

class _SlideContent extends StatefulWidget {
  const _SlideContent({
    required this.colors,
  });

  final List<Color> colors;

  @override
  State<_SlideContent> createState() => _SlideContentState();
}

class _SlideContentState extends State<_SlideContent> {
  late var _configuration = SlideConfiguration(
    alignment: Alignment.center,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    fontSize: 54.0,
    showLogo: true,
  );

  void _updateConfiguration(int index) {
    setState(
      () => _configuration = SlideConfiguration(
        alignment: _alignments[index],
        backgroundColor: widget.colors[index],
        fontSize: _fontSizes[index],
        showLogo: !_configuration.showLogo,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlideStepsListener(
      listener: (context, step) => _updateConfiguration(step - 1),
      child: FlutterDeckSlide.blank(
        backgroundBuilder: (context) => AnimatedContainer(
          duration: _duration,
          color: _configuration.backgroundColor,
        ),
        builder: (context) => Stack(
          children: [
            AnimatedAlign(
              alignment: _configuration.alignment,
              duration: _duration,
              child: AnimatedScale(
                scale: 1.0,
                duration: _duration,
                child: AnimatedDefaultTextStyle(
                  style: TextStyle(fontSize: _configuration.fontSize),
                  duration: _duration,
                  child: Builder(
                    builder: (context) => FlutterDeckCodeHighlight(
                      language: 'json',
                      fileName: 'slide_configuration.json',
                      code: _configuration.toCodeJson(),
                      textStyle: DefaultTextStyle.of(context).style,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedOpacity(
                opacity: _configuration.showLogo ? 1.0 : 0.0,
                duration: _duration,
                child: Image.asset('assets/firebase-remote-config-logo.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final class SlideConfiguration {
  const SlideConfiguration({
    required this.alignment,
    required this.backgroundColor,
    required this.fontSize,
    required this.showLogo,
  });

  final Alignment alignment;
  final Color backgroundColor;
  final double fontSize;
  final bool showLogo;

  String toCodeJson() {
    return '''
{
  "alignment": "${alignment.toString().split('.').last}",
  "backgroundColor": "#${backgroundColor.hex}",
  "fontSize": $fontSize,
  "showLogo": $showLogo
}''';
  }
}

extension ColorX on Color {
  String get hex => [r, g, b]
      .map(
        (c) => ((c * 255.0).round() & 0xff).toRadixString(16).padLeft(2, '0'),
      )
      .join();
}
