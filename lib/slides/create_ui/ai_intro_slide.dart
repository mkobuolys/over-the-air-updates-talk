import 'package:confetti/confetti.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AiIntroSlide extends FlutterDeckSlideWidget {
  const AiIntroSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(route: '/ai-intro', title: 'AI'),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(builder: (context) => const _Content());
  }
}

class _Content extends StatefulWidget {
  const _Content();

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  late final ConfettiController _controller;

  @override
  void initState() {
    super.initState();

    _controller = ConfettiController(duration: const Duration(seconds: 2));
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          ConfettiWidget(
            blastDirectionality: BlastDirectionality.explosive,
            emissionFrequency: 0.05,
            minBlastForce: 30,
            maxBlastForce: 50,
            confettiController: _controller,
          ),
          Text('AI', style: FlutterDeckBigFactSlideTheme.of(context).titleTextStyle),
        ],
      ),
    );
  }
}
