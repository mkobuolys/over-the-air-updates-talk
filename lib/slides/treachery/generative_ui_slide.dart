import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class GenerativeUiSlide extends FlutterDeckSlideWidget {
  const GenerativeUiSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/generative-ui',
            header: FlutterDeckHeaderConfiguration(
              title: 'Generative UI = AI + OTA updates',
            ),
          ),
        );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/generative-ui-chart.png'),
    );
  }
}
