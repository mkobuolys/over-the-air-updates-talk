import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../widgets/widgets.dart';

class WebViewSlide extends FlutterDeckSlideWidget {
  const WebViewSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/web-view',
          header: FlutterDeckHeaderConfiguration(title: 'WebView'),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 64,
        children: [
          LabeledImage(assetName: 'assets/webview-demo.png', label: 'webview_flutter plugin demo'),
          LabeledImage(assetName: 'assets/notion.png', label: 'Notion mobile app'),
        ],
      ),
    );
  }
}
