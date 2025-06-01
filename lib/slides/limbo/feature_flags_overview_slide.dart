import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FeatureFlagsOverviewSlide extends FlutterDeckSlideWidget {
  const FeatureFlagsOverviewSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/feature-flags-overview',
            header: FlutterDeckHeaderConfiguration(
              title: 'Feature flags - OTA updates?',
            ),
          ),
        );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/feature-flags.png',
        frameBuilder: (context, child, _, __) => Transform.scale(
          scale: 1.5,
          child: child,
        ),
      ),
      label: 'https://semaphoreci.com/blog/feature-flags',
    );
  }
}
