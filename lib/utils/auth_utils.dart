import 'package:shared_preferences/shared_preferences.dart';

class AuthUtils {
  static bool isAuth = true;

  void saveToken(String value) async {
    final db = await SharedPreferences.getInstance();
    await db.setString("token", value);
  }

  static Future<void> checkToken() async {
    final db = await SharedPreferences.getInstance();
    final token = db.getString("token");
    print(token);
    if (token == null) {
      isAuth = false;
    } else {
      isAuth = true;
    }
  }

  void deleteToken() async {
    final db = await SharedPreferences.getInstance();
    await db.remove("token");
  }
}