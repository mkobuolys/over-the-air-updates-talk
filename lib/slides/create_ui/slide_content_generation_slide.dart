import 'package:ai_slide_content/ai_slide_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SlideContentGenerationSlide extends FlutterDeckSlideWidget {
  const SlideContentGenerationSlide()
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/slide-content-generation',
          title: 'DEMO: Slide content generation',
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.blank(builder: (context) => const _Content());
  }
}

class _Content extends StatefulWidget {
  const _Content();

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  late final TextEditingController _controller;
  var _topicPrompt = '';
  var _generatedCode = '';

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  void _onGenerate() {
    if (!mounted) return;

    setState(() {
      _generatedCode = '';
      _topicPrompt = _controller.text;
    });
  }

  void _onContentGenerated(String code) {
    setState(() => _generatedCode = code);
  }

  void _showGeneratedCode() {
    if (_generatedCode.isEmpty) return;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Generated Code'),
        content: SingleChildScrollView(
          child: FlutterDeckCodeHighlight(
            code: _generatedCode,
            textStyle: FlutterDeckTheme.of(context).textTheme.bodyLarge,
          ),
        ),
        actions: [TextButton(onPressed: Navigator.of(context).pop, child: const Text('Close'))],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    const hintText = 'Type slide topic here...';

    return Column(
      spacing: 64.0,
      children: [
        Expanded(
          child: AISlideContent(topicPrompt: _topicPrompt, onContentGenerated: _onContentGenerated),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: colorScheme.primary, width: 2.0),
            borderRadius: BorderRadius.circular(64.0),
          ),
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: hintText,
                      hintStyle: TextStyle(fontSize: 36.0),
                      border: InputBorder.none,
                    ),
                    onSubmitted: (_) => _onGenerate(),
                    style: const TextStyle(fontSize: 36.0),
                  ),
                ),
              ),
              IconButton(
                style: IconButton.styleFrom(foregroundColor: colorScheme.primary),
                onPressed: _generatedCode.isNotEmpty ? _showGeneratedCode : null,
                icon: const Icon(Icons.code, size: 36.0),
              ),
              const SizedBox(width: 16.0),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: colorScheme.primary,
                  iconColor: colorScheme.onPrimary,
                  iconSize: 36.0,
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                ),
                onPressed: _onGenerate,
                child: Row(
                  spacing: 8.0,
                  children: [
                    Text('Generate', style: TextStyle(color: colorScheme.onPrimary, fontSize: 36.0)),
                    const Icon(Icons.rocket_launch),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
