import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const _presentationRepoUrl = 'https://github.com/mkobuolys/over-the-air-updates-talk';

class GeminiDisabledPrompt extends StatelessWidget {
  const GeminiDisabledPrompt();

  @override
  Widget build(BuildContext context) {
    final ThemeData(:colorScheme, :textTheme) = Theme.of(context);

    return Center(
      child: Text.rich(
        TextSpan(
          text:
              '🤖 There should be a Gemini-powered demo widget here, '
              "but I don't want to find a thousand-dollar bill in my Google Cloud account. 💸\n\n"
              'If you want to run the demo, launch the presentation locally: ',
          children: [
            TextSpan(
              text: _presentationRepoUrl,
              style: TextStyle(
                color: colorScheme.primary,
                decoration: TextDecoration.underline,
                decorationColor: colorScheme.primary,
              ),
              recognizer: TapGestureRecognizer()..onTap = () => launchUrl(Uri.parse(_presentationRepoUrl)),
            ),
            const TextSpan(text: '\n\nThanks for your understanding! 🙏'),
          ],
        ),
        style: textTheme.titleLarge,
        textAlign: TextAlign.center,
      ),
    );
  }
}
