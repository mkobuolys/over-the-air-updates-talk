import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class DanteInfernoSlide extends FlutterDeckSlideWidget {
  const DanteInfernoSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/dante-inferno',
          title: '9 Circles of Hell',
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/dante-inferno.png'),
      label:
          'https://www.sister-mag.com/en/magazine/sistermag-no-46-march-2019/the-nine-circles-of-hell/',
    );
  }
}
