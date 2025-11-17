import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pdp_junior_mobile/features/auth/auth_page.dart';
import 'package:pdp_junior_mobile/widgets/button_widget.dart';
import 'package:pdp_junior_mobile/widgets/text_widget.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:get/get.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final controller = WebViewController()
    ..loadRequest(
      Uri.parse(
        kIsWeb ? "https://en.wikipedia.org/" : "https://junior.pdp.uz/",
      ),
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, bottom: 8),
          child: MyButton.primary(
            () {
              Get.to(AuthPage());
            },
            "Ilovaga kirish",
          ),
        ),
      ),
      body: SafeArea(
        child: WebViewWidget(controller: controller),
      ),
    );
  }
}
