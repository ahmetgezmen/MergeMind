import 'package:chatgptapp/feature/cache/base_cache_manager.dart';
import 'package:chatgptapp/feature/dalee/models/save_data_model.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../constant /constant.dart';

class ImageCacheManager extends ICacheManager<SaveDAtaModelForDalee>{
  @override
  Future<void> fetch() async {
    super.box =  await Hive.openBox<SaveDAtaModelForDalee>(BaseConstant.saveDataForDAle);
    isInitializing = true;
  }



}