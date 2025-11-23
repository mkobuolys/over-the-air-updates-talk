import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CodePushProvidersSlide extends FlutterDeckSlideWidget {
  const CodePushProvidersSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/code-push-providers',
          header: FlutterDeckHeaderConfiguration(title: 'CodePush providers'),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) {
        final labelStyle = FlutterDeckTheme.of(context).imageSlideTheme.labelTextStyle;

        return Row(
          spacing: 32.0,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 4.0,
                children: [
                  Image.asset('assets/shorebird.png'),
                  Text('https://shorebird.dev', style: labelStyle),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 4.0,
                children: [
                  Image.asset('assets/eas.png'),
                  Text('https://expo.dev/eas', style: labelStyle),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
