import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ShorebirdSlide extends FlutterDeckSlideWidget {
  const ShorebirdSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/shorebird',
          header: FlutterDeckHeaderConfiguration(title: 'CodePush - Shorebird'),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/shorebird.png'),
      label: 'https://shorebird.dev',
    );
  }
}
