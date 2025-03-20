import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AppUpdateRejectedSlide extends FlutterDeckSlideWidget {
  const AppUpdateRejectedSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/app-update-rejected',
          ),
        );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/app-update-rejected.png'),
      label:
          'Image generated using Picsart from the prompt "Mobile app update rejected, Etching, Gustave Doré"',
    );
  }
}
