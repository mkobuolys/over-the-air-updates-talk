import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CrowdinSlide extends FlutterDeckSlideWidget {
  const CrowdinSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/crowdin',
          header: FlutterDeckHeaderConfiguration(title: 'Localization - Crowdin'),
        ),
      );

  @override
  Widget build(BuildContext context) {
    final ThemeData(:brightness, colorScheme: ColorScheme(:surface, :onSurface)) = Theme.of(context);

    return FlutterDeckSlide.blank(
      builder: (context) => Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 4,
          children: [
            Expanded(
              child: Center(
                child: Card(
                  color: brightness == Brightness.light ? surface : onSurface,
                  child: Image.asset('assets/crowdin.png'),
                ),
              ),
            ),
            Text(
              'https://support.crowdin.com/content-delivery',
              style: FlutterDeckImageSlideTheme.of(context).labelTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
