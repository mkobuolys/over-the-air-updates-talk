import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../extensions/extensions.dart';

class FeatureFlagsSlide extends FlutterDeckSlideWidget {
  const FeatureFlagsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/feature-flags',
            header: FlutterDeckHeaderConfiguration(
              title: 'Feature flags',
            ),
          ),
        );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        context.getThemeAssetName('feature-flag.png'),
      ),
    );
  }
}
