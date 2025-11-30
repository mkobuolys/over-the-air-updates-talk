import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../helpers/helpers.dart';
import '../widgets/widgets.dart';

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
    final color = Theme.of(context).colorScheme.onPrimary;

    return FlutterDeckSlide.split(
      leftBuilder: (context) => FlutterDeckBulletList(
        items: const [
          'Reuse your existing tools and libraries for OTA updates',
          'Use CodePush and Server-Driven UI for NEW components and features',
          'Leverage the power of GenAI to build dynamic user experiences',
        ],
      ),
      rightBuilder: (context) => LabeledImage(
        assetName: 'assets/summary.png',
        label: getPicsartPromptLabel("Header image 'Summary', OTA updates"),
        textStyle: FlutterDeckImageSlideTheme.of(context).labelTextStyle?.copyWith(color: color),
      ),
    );
  }
}
