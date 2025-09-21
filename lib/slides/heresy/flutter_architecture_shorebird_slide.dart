import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../extensions/extensions.dart';

class FlutterArchitectureShorebirdSlide extends FlutterDeckSlideWidget {
  const FlutterArchitectureShorebirdSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/flutter-architecture-shorebird',
          header: FlutterDeckHeaderConfiguration(
            title: 'Flutter architecture - Shorebird',
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        context.getThemeAssetName('flutter-architecture-shorebird.png'),
      ),
    );
  }
}
