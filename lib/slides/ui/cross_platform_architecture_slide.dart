import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../extensions/extensions.dart';

class CrossPlatformArchitectureSlide extends FlutterDeckSlideWidget {
  const CrossPlatformArchitectureSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/cross-platform-architecture',
          header: FlutterDeckHeaderConfiguration(title: 'Cross-platform architecture: simplified'),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(context.getThemeAssetName('cross-platform-architecture.png'), scale: 0.5),
    );
  }
}
