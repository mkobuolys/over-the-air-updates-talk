import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RevenueCatPaywallSlide extends FlutterDeckSlideWidget {
  const RevenueCatPaywallSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/revenue-cat-paywall',
            header: FlutterDeckHeaderConfiguration(title: 'RevenueCat'),
          ),
        );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/revenue-cat-paywall.png'),
      label: 'https://www.revenuecat.com/blog/growth/revenuecat-paywalls-v2',
    );
  }
}
