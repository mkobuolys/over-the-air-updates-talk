import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../helpers/helpers.dart';

class December25thSlide extends FlutterDeckSlideWidget {
  const December25thSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(route: '/december-25th', title: 'Timeline: December 25th'),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/december-25th.png'),
      label: getPicsartPromptLabel('Calendar, December 25th'),
    );
  }
}
