import 'package:chatgptapp/feature/viewmodel/chat_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final chatProvider = ChangeNotifierProvider<ChatsViewModel>((ref) {
  return ChatsViewModel();
});
