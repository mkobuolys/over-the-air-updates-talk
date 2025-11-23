import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../extensions/extensions.dart';

class ServerDrivenUiArchitectureSlide extends FlutterDeckSlideWidget {
  const ServerDrivenUiArchitectureSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/server-driven-ui-architecture',
          header: FlutterDeckHeaderConfiguration(title: 'Server-Driven UI - Architecture'),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(context.getThemeAssetName('server-driven-ui-architecture.png')),
    );
  }
}
