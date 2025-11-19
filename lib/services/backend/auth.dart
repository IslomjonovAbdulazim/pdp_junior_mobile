import 'package:dio/dio.dart';

class AuthBackend {
  final dio = Dio(
    BaseOptions(baseUrl: "https://pdpjuniorbackend-production.up.railway.app"),
  );

  Future<bool> register(String code) async {
    try {
      // TODO backend connection
      return true;
    } catch(e) {
      print("REGISTER ERROR: $e");
      return false;
    }
  }
}
