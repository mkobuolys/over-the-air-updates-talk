import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class WebViewSlide extends FlutterDeckSlideWidget {
  const WebViewSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/web-view',
            header: FlutterDeckHeaderConfiguration(
              title: 'WebView',
            ),
          ),
        );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Placeholder(),
    );
  }
}
