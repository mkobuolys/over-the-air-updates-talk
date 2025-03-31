import 'package:ai_slide_content/ai_slide_content.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SlideContentGenerationSlide extends FlutterDeckSlideWidget {
  const SlideContentGenerationSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/slide-content-generation',
          ),
        );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const AISlideContent.fake(),
    );
  }
}
