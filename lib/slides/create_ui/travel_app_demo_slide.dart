import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:travel_app_old/travel_app.dart';

import '../../widgets/widgets.dart';

class TravelAppDemoSlide extends FlutterDeckSlideWidget {
  const TravelAppDemoSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/travel-app-demo',
          title: 'DEMO: AI Travel Agent',
          header: FlutterDeckHeaderConfiguration(title: 'Generative UI - AI Travel Agent'),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const bool.fromEnvironment('GEMINI_ENABLED')
          ? TravelAppOld(theme: FlutterDeckTheme.of(context).materialTheme)
          : const GeminiDisabledPrompt(),
    );
  }
}
