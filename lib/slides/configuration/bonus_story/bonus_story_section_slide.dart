import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../../helpers/helpers.dart';

class BonusStorySectionSlide extends FlutterDeckSlideWidget {
  const BonusStorySectionSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/bonus-story',
          title: 'Bonus story: Configuring app reviews',
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/bonus-story.png'),
      label: getPicsartPromptLabel("Header image 'Bonus story!'"),
    );
  }
}
