import 'package:chatgptapp/feature/models/services_models/response_model.dart';

abstract class INetworkManager {
  Future<NetworkResponse> get(String url);
  Future<NetworkResponse> post(String url, dynamic body);
  Future<NetworkResponse> put(String url, dynamic body);
  Future<NetworkResponse> delete(String url);
  
}