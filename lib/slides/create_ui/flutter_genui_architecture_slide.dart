import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../extensions/extensions.dart';

class FlutterGenuiArchitectureSlide extends FlutterDeckSlideWidget {
  const FlutterGenuiArchitectureSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/flutter-genui-architecture',
          title: 'flutter_genui architecture',
          header: FlutterDeckHeaderConfiguration(title: 'flutter_genui - architecture'),
          hidden: true,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(context.getThemeAssetName('flutter_genui_architecture.png')),
    );
  }
}
