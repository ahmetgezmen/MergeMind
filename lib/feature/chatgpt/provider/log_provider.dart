import 'package:chatgptapp/feature/chatgpt/viewmodel/log_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final logProvider = ChangeNotifierProvider<LogViewModel>((ref) {
  return LogViewModel() ;
});
