import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class IntercomSlide extends FlutterDeckSlideWidget {
  const IntercomSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/intercom',
          ),
        );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/intercom.png'),
      label: 'Intercom - Billo Help Center',
    );
  }
}
