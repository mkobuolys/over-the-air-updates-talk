import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ReadingMoreResolutionSlide extends FlutterDeckSlideWidget {
  const ReadingMoreResolutionSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/reading-more-resolution',
          title: "New Year's resolution - reading more",
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) =>
          Image.asset('assets/reading-more-resolution.png'),
      label:
          'Image generated using Picsart from the prompt "New Year\'s resolution - reading more, Etching, Gustave Doré"',
    );
  }
}
