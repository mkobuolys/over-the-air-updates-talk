import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FlutterGenuiProjectSlide extends FlutterDeckSlideWidget {
  const FlutterGenuiProjectSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/flutter-genui-project',
          title: 'flutter_genui project',
          header: FlutterDeckHeaderConfiguration(
            title: 'Generative UI SDK for Flutter (flutter_genui)',
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckImageSlideTheme(
      data: FlutterDeckImageSlideThemeData(
        labelTextStyle: context.flutterDeckTheme.textTheme.title,
      ),
      child: FlutterDeckSlide.image(
        imageBuilder: (context) => Image.asset('assets/flutter-genui.png'),
        label: 'https://github.com/flutter/genui',
      ),
    );
  }
}
