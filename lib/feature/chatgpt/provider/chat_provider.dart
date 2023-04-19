import 'package:chatgptapp/feature/provider/api_key_provider.dart';
import 'package:chatgptapp/feature/chatgpt/viewmodel/chat_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final chatProvider = ChangeNotifierProvider<ChatsViewModel>((ref) {
  return ChatsViewModel(ref.watch(apiKeyProvider));
});
