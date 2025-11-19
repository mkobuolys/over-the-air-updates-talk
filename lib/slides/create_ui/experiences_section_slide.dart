import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CreateUiSectionSlide extends FlutterDeckSlideWidget {
  const CreateUiSectionSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(route: '/create-ui-section', title: 'Level 3: Creating UI'),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.bigFact(title: 'Creating UI', subtitle: 'Level 3');
  }
}
