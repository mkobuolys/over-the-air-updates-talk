import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FirebaseRemoteConfigSlide extends FlutterDeckSlideWidget {
  const FirebaseRemoteConfigSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/firebase-remote-config',
            header: FlutterDeckHeaderConfiguration(
              title: 'Firebase Remote Config',
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
