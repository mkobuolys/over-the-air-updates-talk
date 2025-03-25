import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CodePushSlide extends FlutterDeckSlideWidget {
  const CodePushSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/code-push',
            header: FlutterDeckHeaderConfiguration(
              title: 'CodePush - Shorebird',
            ),
          ),
        );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Placeholder(),
    );
  }
}
