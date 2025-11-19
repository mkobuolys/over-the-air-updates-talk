import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../extensions/extensions.dart';

class RemoteFlutterWidgetsOverviewSlide extends FlutterDeckSlideWidget {
  const RemoteFlutterWidgetsOverviewSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/remote-flutter-widgets-overview',
          header: FlutterDeckHeaderConfiguration(title: 'Server-Driven UI - rfw'),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(context.getThemeAssetName('rfw-architecture.png')),
    );
  }
}
