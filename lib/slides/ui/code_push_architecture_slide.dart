import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../extensions/extensions.dart';

class CodePushArchitectureSlide extends FlutterDeckSlideWidget {
  const CodePushArchitectureSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/code-push-architecture',
          header: FlutterDeckHeaderConfiguration(title: 'Cross-platform architecture - CodePush'),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(context.getThemeAssetName('code-push-architecture.png'), scale: 0.5),
    );
  }
}
