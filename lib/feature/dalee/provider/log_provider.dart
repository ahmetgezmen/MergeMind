import 'package:chatgptapp/feature/dalee/viewmodel/log_viewmodel.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final logModelForDAleeProvider = ChangeNotifierProvider<LogViewModelForDalee>((ref) {
  return LogViewModelForDalee();
});
