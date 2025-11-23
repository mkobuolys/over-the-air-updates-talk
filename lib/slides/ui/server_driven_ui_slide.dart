import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ServerDrivenUiSlide extends FlutterDeckSlideWidget {
  const ServerDrivenUiSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/server-driven-ui',
          header: FlutterDeckHeaderConfiguration(title: 'Server-Driven UI (SDUI)'),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/server-driven-ui.png'),
      label: 'https://nativeblocks.io/blog/server-driven-ui-introduction',
    );
  }
}
