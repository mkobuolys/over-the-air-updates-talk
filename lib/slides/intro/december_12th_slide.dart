import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../helpers/helpers.dart';

class December12thSlide extends FlutterDeckSlideWidget {
  const December12thSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(route: '/december-12th', title: 'Timeline: December 12th'),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/december-12th.png'),
      label: getPicsartPromptLabel('Calendar, December 12th'),
    );
  }
}
