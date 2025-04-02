import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ThankYouSlide extends FlutterDeckSlideWidget {
  const ThankYouSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/thank-you',
            title: 'Thank you!',
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  Widget build(BuildContext context) {
    final theme = FlutterDeckTheme.of(context).titleSlideTheme;

    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Thank you! 🫡', style: theme.titleTextStyle),
            const SizedBox(height: 48),
            FlutterDeckSpeakerInfoWidget(
              speakerInfo: context.flutterDeck.speakerInfo!,
            ),
          ],
        ),
      ),
    );
  }
}
