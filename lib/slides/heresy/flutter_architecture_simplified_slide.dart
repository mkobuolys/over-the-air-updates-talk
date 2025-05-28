import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FlutterArchitectureSimplifiedSlide extends FlutterDeckSlideWidget {
  const FlutterArchitectureSimplifiedSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-architecture-simplified',
            header: FlutterDeckHeaderConfiguration(
              title: 'Flutter architecture - simplified',
            ),
          ),
        );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/flutter-architecture-simplified.png',
      ),
    );
  }
}
