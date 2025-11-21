import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:pdp_junior_mobile/features/auth/onboarding_page.dart';
import 'package:pdp_junior_mobile/features/main/home_page.dart';
import 'package:pdp_junior_mobile/utils/auth_utils.dart';
import 'package:toastification/toastification.dart';

void main() async {
  final init = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: init);
  await AuthUtils.checkToken();
  FlutterNativeSplash.remove();
  runApp(
    DevicePreview(
      enabled: kDebugMode && kIsWeb,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: AuthUtils.isAuth ? HomePage() : OnboardingPage(),
      ),
    );
  }
}
