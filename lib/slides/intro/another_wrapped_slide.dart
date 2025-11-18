import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../helpers/helpers.dart';

class AnotherWrappedSlide extends FlutterDeckSlideWidget {
  const AnotherWrappedSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(route: '/another-wrapped', title: 'Ugh, another wrapped...'),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/cat-annoyed.png'),
      label: getPicsartPromptLabel("Cat using mobile app, eye-rolling, annoyed, 'ugh, another wrapped'"),
    );
  }
}
