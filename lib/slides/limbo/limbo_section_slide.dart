import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class LimboSectionSlide extends FlutterDeckSlideWidget {
  const LimboSectionSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/limbo-section',
          title: 'Level 1: Limbo',
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.bigFact(title: 'Limbo', subtitle: 'Level 1');
  }
}
