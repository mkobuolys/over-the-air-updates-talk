import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../extensions/extensions.dart';

class FeatureFlagsProgressiveSlide extends FlutterDeckSlideWidget {
  const FeatureFlagsProgressiveSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/feature-flags-progressive',
            header: FlutterDeckHeaderConfiguration(
              title: 'Feature flags - progressive',
            ),
          ),
        );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        context.getThemeAssetName('feature-flag-progressive.png'),
      ),
    );
  }
}
