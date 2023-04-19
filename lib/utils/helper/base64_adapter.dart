import 'dart:convert';
import 'dart:typed_data';

import 'package:chatgptapp/feature/dalee/models/response_model.dart';

extension Base64Adapter on B64ModelFromResponsForDalee {

  Uint8List get toUint8List {
    return base64.decode(this.b64_json);
  }

}