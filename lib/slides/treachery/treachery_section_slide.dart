import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class TreacherySectionSlide extends FlutterDeckSlideWidget {
  const TreacherySectionSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/treachery-section',
          ),
        );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: 'Treachery',
      subtitle: 'Level 3',
    );
  }
}
