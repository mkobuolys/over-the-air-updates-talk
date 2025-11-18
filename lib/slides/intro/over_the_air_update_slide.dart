import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../helpers/helpers.dart';

class OverTheAirUpdateSlide extends FlutterDeckSlideWidget {
  const OverTheAirUpdateSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/over-the-air-update',
          title: 'Solution: Over-the-air app update',
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/over-the-air-update.png'),
      label: getPicsartPromptLabel('Mobile app, over-the-air update'),
    );
  }
}
