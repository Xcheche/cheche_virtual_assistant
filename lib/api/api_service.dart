import 'dart:convert';

import 'package:http/http.dart' as http;

// class APIService {
//   Future<http.Response> requestOpenAI(
//       String userInput, String mode, int maximumTokens) async {
//     const String url = "https://api.openai.com/";
//     final String openAiApiUrl =
//         mode == "chat" ? "v1/completions" : "v1/images/generations";

//     final body = mode == "chat"
//         ? {
//             "model": "text-davinci-003",
//             "prompt": userInput,
//             "max_tokens": 2000,
//             "temperature": 0.9,
//             "n": 1,
//           }
//         : {
//             "prompt": userInput,
//           };

//     final responseFromOpenAPI = await http.post(
//       Uri.parse(url + openAiApiUrl),
//       headers: {
//         "Content-Type": "application/json",
//         "Authorization": "Bearer $apiKey"
//       },
//       body: jsonEncode(body),
//     );

//     return responseFromOpenAPI;
//   }
// }
// Import statements remain the same

class APIService {
  static const String _baseUrl = "https://api.openai.com/";
  static const String _apiKey =
      "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"; // Replace with your actual API key

  Future<http.Response> requestOpenAI(
      String userInput, String mode, int maximumTokens) async {
    final String openAiApiUrl =
        mode == "chat" ? "v1/completions" : "v1/images/generations";

    final body = mode == "chat"
        ? {
            "model": "text-davinci-003",
            "prompt": userInput,
            "max_tokens": 2000,
            "temperature": 0.9,
            "n": 1,
          }
        : {
            "prompt": userInput,
          };

    final responseFromOpenAPI = await http.post(
      Uri.parse(_baseUrl + openAiApiUrl),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $_apiKey"
      },
      body: jsonEncode(body),
    );

    return responseFromOpenAPI;
  }
}

// The rest of the code remains the same
