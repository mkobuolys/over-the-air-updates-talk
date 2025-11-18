import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../helpers/helpers.dart';

class AwsWrappedSlide extends FlutterDeckSlideWidget {
  const AwsWrappedSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(route: '/aws-wrapped', title: 'AWS Wrapped 2025'),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/aws-wrapped.png'),
      label: getPicsartPromptLabel('AWS Wrapped 2025'),
    );
  }
}
