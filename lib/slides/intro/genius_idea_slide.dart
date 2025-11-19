import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../helpers/helpers.dart';

class GeniusIdeaSlide extends FlutterDeckSlideWidget {
  const GeniusIdeaSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(route: '/genius-idea', title: 'Genius idea (?)'),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/cat-product-manager.png'),
      label: getPicsartPromptLabel('Cat product manager having a genius idea, Light bulb'),
    );
  }
}
