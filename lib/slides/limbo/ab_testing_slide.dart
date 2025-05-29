import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../extensions/extensions.dart';

class AbTestingSlide extends FlutterDeckSlideWidget {
  const AbTestingSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/ab-testing',
            header: FlutterDeckHeaderConfiguration(
              title: 'A/B Testing - feature flag + analytics',
            ),
          ),
        );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        context.getThemeAssetName('ab-test.png'),
      ),
    );
  }
}
