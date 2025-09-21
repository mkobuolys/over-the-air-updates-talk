import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class NewYearSlide extends FlutterDeckSlideWidget {
  const NewYearSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/new-year',
          title: 'New Year - new me',
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/new-year.png'),
      label:
          'Image generated using Picsart from the prompt "New Year 2025, Etching, Gustave Doré"',
    );
  }
}
