import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../widgets/widgets.dart';

class ThirdPartySolutionsSlide extends FlutterDeckSlideWidget {
  const ThirdPartySolutionsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/third-party-solutions',
            header: FlutterDeckHeaderConfiguration(
              title: 'Third-party SDKs',
            ),
          ),
        );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Row(
        spacing: 16,
        children: [
          Expanded(
            child: LabeledImage(
              assetName: 'assets/intercom.png',
              label: 'Intercom - Billo Help Center',
            ),
          ),
          Expanded(
            child: LabeledImage(
              assetName: 'assets/revenue-cat-paywall.png',
              label:
                  'https://www.revenuecat.com/blog/growth/revenuecat-paywalls-v2',
            ),
          ),
        ],
      ),
    );
  }
}
