import 'package:dio/dio.dart';
import 'package:pdp_junior_mobile/utils/auth_utils.dart';
import 'package:pdp_junior_mobile/utils/toast_utils.dart';

class AuthBackend {
  final dio = Dio(
    BaseOptions(baseUrl: "https://pdpjuniorbackend-production.up.railway.app"),
  );

  Future<bool> register(String code) async {
    try {
      final response = await dio.post(
        "/auth/login",
        data: {
          "verification_code": code,
        },
      );
      if (response.statusCode == 200) {
        final token = response.data["access_token"];
        AuthUtils().saveToken(token.toString());
        return true;
      } else {
        final error = response.data["detail"];
        ToastUtils.red(error.toString());
        return false;
      }
    } catch (e) {
      print("REGISTER ERROR: $e");
      ToastUtils.red("Nimadur xato ketti");
      return false;
    }
  }
}
