import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../helpers/helpers.dart';

class AppUpdatePendingSlide extends FlutterDeckSlideWidget {
  const AppUpdatePendingSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/app-update-pending',
          title: 'App update is still pending!',
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/app-update-pending.png'),
      label: getPicsartPromptLabel('Cat scared, App update is still pending'),
    );
  }
}
