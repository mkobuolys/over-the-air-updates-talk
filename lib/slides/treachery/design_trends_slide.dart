import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../extensions/extensions.dart';

class DesignTrendsSlide extends FlutterDeckSlideWidget {
  const DesignTrendsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/design-trends',
            header: FlutterDeckHeaderConfiguration(
              title: 'Design trends',
            ),
          ),
        );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        context.getThemeAssetName('design-trends.png'),
      ),
    );
  }
}
