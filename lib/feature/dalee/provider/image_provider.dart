import 'package:chatgptapp/feature/dalee/viewmodel/image_viewmodel.dart';
import 'package:chatgptapp/feature/provider/api_key_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final imageStateProvider = StateNotifierProvider<ImageViewModel, bool>((ref) {
  return ImageViewModel(ref.read(apiKeyProvider));
});
