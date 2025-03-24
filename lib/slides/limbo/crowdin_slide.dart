import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CrowdinSlide extends FlutterDeckSlideWidget {
  const CrowdinSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/crowdin',
            header: FlutterDeckHeaderConfiguration(title: 'Crowdin'),
          ),
        );

  @override
  Widget build(BuildContext context) {
    final ThemeData(
      :brightness,
      colorScheme: ColorScheme(:surface, :onSurface)
    ) = Theme.of(context);

    return FlutterDeckSlide.blank(
      builder: (context) => Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Card(
                  color: brightness == Brightness.light ? surface : onSurface,
                  child: Image.asset('assets/crowdin.png'),
                ),
              ),
            ),
            const SizedBox(height: 4),
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
