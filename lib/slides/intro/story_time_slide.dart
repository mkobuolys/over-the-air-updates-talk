import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../helpers/helpers.dart';

class StoryTimeSlide extends FlutterDeckSlideWidget {
  const StoryTimeSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(route: '/story-time', title: 'Story time!'),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/story-time.png'),
      label: getPicsartPromptLabel("Header image 'Story time!'"),
    );
  }
}
