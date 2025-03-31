import 'package:google_generative_ai/google_generative_ai.dart';

const _prompt = '''
Generate Flutter code for a slide content.
''';

class GeminiClient {
  GeminiClient()
      : _model = GenerativeModel(
          model: 'gemini-2.0-flash',
          apiKey: const String.fromEnvironment('GEMINI_API_KEY'),
          generationConfig: GenerationConfig(
            responseMimeType: 'application/json',
            responseSchema: Schema.object(
              properties: {
                'code': Schema.string(
                  description: 'The generated slide content.',
                  nullable: false,
                ),
              },
              requiredProperties: ['code'],
            ),
          ),
        );

  final GenerativeModel _model;

  Future<String?> generateSlideContent() async {
    final response = await _model.generateContent([Content.text(_prompt)]);

    return response.text;
  }
}
