import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

import 'slides/slides.dart';

void main() {
  runApp(const _FlutterDeckApp());
}

class _FlutterDeckApp extends StatelessWidget {
  const _FlutterDeckApp();

  @override
  Widget build(BuildContext context) {
    return FlutterDeckApp(
      configuration: FlutterDeckConfiguration(
        footer: const FlutterDeckFooterConfiguration(
          showSlideNumbers: true,
          showSocialHandle: true,
        ),
        slideSize: FlutterDeckSlideSize.fromAspectRatio(
          aspectRatio: const FlutterDeckAspectRatio.ratio16x10(),
        ),
        transition: const FlutterDeckTransition.fade(),
      ),
      slides: const [
        TitleSlide(),
        ...introSlides,
        ThankYouSlide(),
      ],
      speakerInfo: const FlutterDeckSpeakerInfo(
        name: 'Mangirdas Kazlauskas',
        description: 'Mobile Tech Lead @ Billo',
        socialHandle: '@mkobuolys | kazlauskas.dev',
        imagePath: 'assets/speaker.png',
      ),
    );
  }
}
