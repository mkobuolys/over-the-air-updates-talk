import 'package:firebase_ai/firebase_ai.dart';

class GeminiClient {
  GeminiClient()
      : _model = FirebaseAI.googleAI().generativeModel(
          model: 'gemini-2.5-flash',
          generationConfig: GenerationConfig(
            responseMimeType: 'application/json',
            responseSchema: Schema.string(
              description: 'The generated slide content in RFW format.',
              nullable: false,
            ),
          ),
        );

  final GenerativeModel _model;

  Future<String?> generateSlideContent(String topic, String exampleCode) async {
    final prompt = '''
Generate a slide code about the provided topic in RFW (Remote Flutter Widget) format.

Rules:
- Use the provided topic to generate the slide content.
- Use the provided example code as a reference for the structure and style.
- The generated code should be in RFW format.
- Slide should contain a title and a list of items related to the topic.
- Generate a list of 3 items.
- Each item should be a maximum of 100 characters.
- Slide should contain an image related to the topic.
- Use image.pollinations.ai for image generation.

Topic: $topic
Example code: `$exampleCode`
''';

    final response = await _model.generateContent([Content.text(prompt)]);

    return response.text;
  }
}
