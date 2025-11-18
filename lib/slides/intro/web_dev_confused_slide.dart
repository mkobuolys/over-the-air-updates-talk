import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../helpers/helpers.dart';

class WebDevConfusedSlide extends FlutterDeckSlideWidget {
  const WebDevConfusedSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/web-dev-confused',
          title: 'Web developers - visible confusion',
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/web-dev-confused.png'),
      label: getPicsartPromptLabel('Cat web dev, confused, question mark'),
    );
  }
}
