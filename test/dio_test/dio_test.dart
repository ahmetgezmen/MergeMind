// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:chatgptapp/feature/chatgpt/models/models.dart';
import 'package:chatgptapp/feature/chatgpt/services/network_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('request GET', () async {
    // add api key and tested
    const apiKey = '';
    final networkManager = NetworkManager(apiKey);
    const rmodel = RequestDataModel(
      model: 'gpt-3.5-turbo',
      messages: [
        Message(
          content: 'HI ARE YOU THERE?',
          role: 'user',
        ),
      ],
    );
    final response = await networkManager.post(requestDataModel: rmodel);
    if (kDebugMode) {
      print(
        NetworkResponse.fromJson(response.data as Map<String, dynamic>)
            .toJson(),
      );
    }
  });
}
