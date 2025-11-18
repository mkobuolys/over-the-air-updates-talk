import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../helpers/helpers.dart';

class December4thSlide extends FlutterDeckSlideWidget {
  const December4thSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(route: '/december-4th', title: 'Timeline: December 4th'),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/december-4th.png'),
      label: getPicsartPromptLabel('Calendar, December 4th'),
    );
  }
}
