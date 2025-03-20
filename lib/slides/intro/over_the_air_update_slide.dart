import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class OverTheAirUpdateSlide extends FlutterDeckSlideWidget {
  const OverTheAirUpdateSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/over-the-air-update',
          ),
        );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/over-the-air-update.png'),
      label:
          'Image generated using Picsart from the prompt "Pigeon delivers mobile app update, Etching, Gustave Doré"',
    );
  }
}
