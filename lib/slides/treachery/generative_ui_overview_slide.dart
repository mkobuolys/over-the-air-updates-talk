import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../extensions/extensions.dart';

class GenerativeUiOverviewSlide extends FlutterDeckSlideWidget {
  const GenerativeUiOverviewSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/generative-ui-overview',
          title: 'Generative UI overview',
          header: FlutterDeckHeaderConfiguration(title: 'Generative UI'),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) =>
          Image.asset(context.getThemeAssetName('generative-ui-overview.png')),
    );
  }
}
