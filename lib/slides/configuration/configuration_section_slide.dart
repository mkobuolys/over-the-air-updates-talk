import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ConfigurationSectionSlide extends FlutterDeckSlideWidget {
  const ConfigurationSectionSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/updating-configuration-section',
          title: 'Level 1: Updating configuration',
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.bigFact(title: 'Updating configuration', subtitle: 'Level 1');
  }
}
