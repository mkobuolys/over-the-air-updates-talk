import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../extensions/extensions.dart';

class ServerDrivenUiAndAiSlide extends FlutterDeckSlideWidget {
  const ServerDrivenUiAndAiSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/server-driven-ui-and-ai',
          title: 'Server-Driven UI + AI',
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(context.getThemeAssetName('server-driven-ui-and-ai.png')),
    );
  }
}
