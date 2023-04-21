import 'package:hooks_riverpod/hooks_riverpod.dart';


final apiKeyStateProvider = StateNotifierProvider<ApiKeyStateNotifier, String>((ref) {
  return ApiKeyStateNotifier();
});


class ApiKeyStateNotifier extends StateNotifier<String> {
ApiKeyStateNotifier() : super('');

  void setApiKey(String apiKey) {
    state = apiKey;
  }
}