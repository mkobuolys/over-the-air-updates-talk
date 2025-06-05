import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CodePushRelevanceSlide extends FlutterDeckSlideWidget {
  const CodePushRelevanceSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/code-push-relevance',
            title: 'CodePush - relevance',
            header: FlutterDeckHeaderConfiguration(
              title: 'CodePush - #1 requested feature for Flutter',
            ),
          ),
        );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/code-push-relevance.png'),
    );
  }
}
