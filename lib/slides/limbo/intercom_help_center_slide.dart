import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class IntercomHelpCenterSlide extends FlutterDeckSlideWidget {
  const IntercomHelpCenterSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/intercom-help-center',
          header: FlutterDeckHeaderConfiguration(
            title: 'Customer support help center - Intercom',
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/intercom.png'),
    );
  }
}
