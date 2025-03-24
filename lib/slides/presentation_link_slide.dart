import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PresentationLinkSlide extends FlutterDeckSlideWidget {
  const PresentationLinkSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/presentation-link',
          ),
        );

  @override
  Widget build(BuildContext context) {
    const theme = FlutterDeckBigFactSlideThemeData(
      titleTextStyle: TextStyle(fontSize: 96, fontWeight: FontWeight.bold),
    );

    return FlutterDeckSlide.bigFact(
      theme: FlutterDeckTheme.of(context).copyWith(bigFactSlideTheme: theme),
      title: 'kazlauskas.dev/presentations',
    );
  }
}
