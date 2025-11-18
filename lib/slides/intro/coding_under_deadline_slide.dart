import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../helpers/helpers.dart';

class CodingUnderDeadlineSlide extends FlutterDeckSlideWidget {
  const CodingUnderDeadlineSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/coding-under-deadline',
          title: 'Coding under deadline',
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/coding-under-deadline.png'),
      label: getPicsartPromptLabel('Cat with sweat drops coding under deadline'),
    );
  }
}
