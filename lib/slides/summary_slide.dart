import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../widgets/labeled_image.dart';

class SummarySlide extends FlutterDeckSlideWidget {
  const SummarySlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/summary',
          title: 'Summary',
          header: FlutterDeckHeaderConfiguration(title: 'Summary'),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) => const Placeholder(),
      rightBuilder: (context) => const LabeledImage(
        assetName: 'assets/summary.png',
        label:
            'Image generated using Picsart from the prompt "Summary, Etching, Gustave Doré"',
      ),
    );
  }
}
