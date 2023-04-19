import 'package:chatgptapp/feature/dalee/provider/log_provider.dart';
import 'package:chatgptapp/feature/dalee/viewmodel/image_viewmodel.dart';
import 'package:chatgptapp/feature/dalee/viewmodel/log_viewmodel.dart';
import 'package:chatgptapp/feature/provider/api_key_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final imageStateProvider = StateNotifierProvider<ImageViewModel, bool>((ref) {
  final LogViewModelForDalee logProviderForDale = ref.watch(logModelForDAleeProvider);
  return ImageViewModel(ref.read(apiKeyProvider), logProviderForDale );
});
