import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class HeresySectionSlide extends FlutterDeckSlideWidget {
  const HeresySectionSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(route: '/heresy-section', title: 'Level 2: Heresy'),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.bigFact(title: 'Heresy', subtitle: 'Level 2');
  }
}
