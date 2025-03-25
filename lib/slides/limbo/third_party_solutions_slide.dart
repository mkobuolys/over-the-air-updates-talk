import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

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
          _LabeledImage(
            assetName: 'assets/intercom.png',
            label: 'Intercom - Billo Help Center',
          ),
          _LabeledImage(
            assetName: 'assets/revenue-cat-paywall.png',
            label:
                'https://www.revenuecat.com/blog/growth/revenuecat-paywalls-v2',
          ),
        ],
      ),
    );
  }
}

class _LabeledImage extends StatelessWidget {
  const _LabeledImage({
    required this.assetName,
    required this.label,
  });

  final String assetName;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 8,
        children: [
          Image.asset(assetName),
          Text(
            label,
            style: FlutterDeckImageSlideTheme.of(context).labelTextStyle,
          ),
        ],
      ),
    );
  }
}
