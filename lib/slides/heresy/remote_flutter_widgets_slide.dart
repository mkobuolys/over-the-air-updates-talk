import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RemoteFlutterWidgetsSlide extends FlutterDeckSlideWidget {
  const RemoteFlutterWidgetsSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/remote-flutter-widgets',
            header: FlutterDeckHeaderConfiguration(
              title: 'Remote Flutter Widgets - rfw',
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
