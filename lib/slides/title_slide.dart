import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class TitleSlide extends FlutterDeckSlideWidget {
  const TitleSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/title',
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
            Text(
              'From fear to air 🚀',
              style: theme.titleTextStyle,
            ),
            Text(
              'Embracing over-the-air app updates',
              style: theme.subtitleTextStyle,
            ),
            const SizedBox(height: 64),
            FlutterDeckSpeakerInfoWidget(
              speakerInfo: context.flutterDeck.speakerInfo!,
            ),
          ],
        ),
      ),
    );
  }
}
