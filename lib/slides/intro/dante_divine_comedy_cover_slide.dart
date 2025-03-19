import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class DanteDivineComedyCoverSlide extends FlutterDeckSlideWidget {
  const DanteDivineComedyCoverSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/dante-divine-comedy-cover',
          ),
        );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/dante-divine-comedy-cover.png',
      ),
      label:
          'https://www.bailiwickexpress.com/opinion/opinion-five-life-lessons-dantes-afterworld/',
    );
  }
}
