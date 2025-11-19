import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UiSectionSlide extends FlutterDeckSlideWidget {
  const UiSectionSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(route: '/ui-section', title: 'Level 2: Updating UI'),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.bigFact(title: 'Updating UI', subtitle: 'Level 2');
  }
}
