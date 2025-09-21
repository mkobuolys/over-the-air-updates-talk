import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class LabeledImage extends StatelessWidget {
  const LabeledImage({required this.assetName, required this.label});

  final String assetName;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 8,
      children: [
        Expanded(child: Image.asset(assetName)),
        Text(
          label,
          style: FlutterDeckImageSlideTheme.of(context).labelTextStyle,
        ),
      ],
    );
  }
}
