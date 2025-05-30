import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CodePushSlide extends FlutterDeckSlideWidget {
  const CodePushSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/code-push',
            header: FlutterDeckHeaderConfiguration(
              title: 'CodePush - OTA app updates',
            ),
          ),
        );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/code-push.png'),
      label:
          'https://learn.stalliontech.io/blogs/react-native-over-the-air-updates-with-custom-ui',
    );
  }
}
