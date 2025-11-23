import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CodePushUpdateProcessSlide extends FlutterDeckSlideWidget {
  const CodePushUpdateProcessSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/code-push-update-process',
          header: FlutterDeckHeaderConfiguration(title: 'CodePush - Update process'),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/code-push-update-process.png'),
      label: 'https://docs.expo.dev/eas-update/how-it-works',
    );
  }
}
