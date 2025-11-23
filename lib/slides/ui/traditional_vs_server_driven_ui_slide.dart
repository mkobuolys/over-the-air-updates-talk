import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../extensions/extensions.dart';

class TraditionalVsServerDrivenUiSlide extends FlutterDeckSlideWidget {
  const TraditionalVsServerDrivenUiSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/traditional-vs-server-driven-ui',
          title: 'Traditional vs Server-Driven UI',
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(context.getThemeAssetName('traditional-vs-server-driven-ui.png')),
    );
  }
}
