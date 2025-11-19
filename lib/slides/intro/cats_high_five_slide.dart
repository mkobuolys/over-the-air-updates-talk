import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../helpers/helpers.dart';

class CatsHighFiveSlide extends FlutterDeckSlideWidget {
  const CatsHighFiveSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(route: '/cats-high-five', title: 'Success - high five!'),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/cats-high-five.png'),
      label: getPicsartPromptLabel('Cats high-fiving each other, Developers, Success'),
    );
  }
}
