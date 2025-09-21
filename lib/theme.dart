import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

abstract final class PresentationTheme {
  const PresentationTheme._();

  static const primaryColor = Color(0xFF0014E6);

  static final darkTheme = FlutterDeckThemeData.dark().copyWith(
    bigFactSlideTheme: _bigFactSlideTheme,
    quoteSlideTheme: _quoteSlideTheme,
    speakerInfoWidgetTheme: _speakerInfoWidgetTheme,
    titleSlideTheme: _titleSlideTheme,
  );

  static final lightTheme =
      FlutterDeckThemeData.fromTheme(
        ThemeData.from(
          colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
          useMaterial3: true,
        ),
      ).copyWith(
        bigFactSlideTheme: _bigFactSlideTheme,
        quoteSlideTheme: _quoteSlideTheme,
        speakerInfoWidgetTheme: _speakerInfoWidgetTheme,
        titleSlideTheme: _titleSlideTheme,
      );

  static const _bigFactSlideTheme = FlutterDeckBigFactSlideThemeData(
    titleTextStyle: TextStyle(fontSize: 128, fontWeight: FontWeight.bold),
    subtitleTextStyle: TextStyle(
      fontSize: 64,
      fontWeight: FontWeight.w500,
      height: 1,
    ),
  );

  static const _quoteSlideTheme = FlutterDeckQuoteSlideThemeData(
    quoteTextStyle: TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
    attributionTextStyle: TextStyle(fontSize: 48, fontWeight: FontWeight.w500),
  );

  static const _speakerInfoWidgetTheme = FlutterDeckSpeakerInfoWidgetThemeData(
    descriptionTextStyle: TextStyle(fontSize: 24),
    nameTextStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
    socialHandleTextStyle: TextStyle(fontSize: 24),
  );

  static const _titleSlideTheme = FlutterDeckTitleSlideThemeData(
    titleTextStyle: TextStyle(fontSize: 96, fontWeight: FontWeight.bold),
    subtitleTextStyle: TextStyle(fontSize: 80, height: 1),
  );
}
