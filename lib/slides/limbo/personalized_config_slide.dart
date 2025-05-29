import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../extensions/extensions.dart';

class PersonalizedConfigSlide extends FlutterDeckSlideWidget {
  const PersonalizedConfigSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/personalized-config',
            header: FlutterDeckHeaderConfiguration(
              title: 'Personalized configuration',
            ),
          ),
        );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        context.getThemeAssetName('personalized-config.png'),
      ),
    );
  }
}
