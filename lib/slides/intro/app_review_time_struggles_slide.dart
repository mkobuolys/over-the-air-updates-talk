import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AppReviewTimeStrugglesSlide extends FlutterDeckSlideWidget {
  const AppReviewTimeStrugglesSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/app-review-time-struggles',
          title: 'App review time struggles',
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(imageBuilder: (context) => Image.asset('assets/slow-app-review.png', scale: 0.5));
  }
}
