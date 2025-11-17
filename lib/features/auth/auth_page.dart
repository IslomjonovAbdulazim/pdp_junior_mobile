import 'package:flutter/material.dart';
import 'package:pdp_junior_mobile/utils/link_utils.dart';
import 'package:pdp_junior_mobile/widgets/button_widget.dart';
import 'package:pdp_junior_mobile/widgets/text_widget.dart';
import 'package:pinput/pinput.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isPressed = false;
  bool isLoading = false;
  String? error;

  void complete(String code) async {
    isLoading = true;
    setState(() {});
    await Future.delayed(Duration(seconds: 2));
    if (code == "88888") {

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton.primary(
                  () {
                    LinkUtils.open("https://t.me/pdp_robot");
                    isPressed = true;
                    setState(() {});
                  },
                  "Maxfiy kodni olish",
                ),
                if (isPressed) ...[
                  SizedBox(height: 16),
                  MyText.body(
                    "Telegram bot dan olgan tasdiqlash kodingini shu yerga kiriting",
                  ),
                  SizedBox(height: 16),
                  Pinput(
                    length: 5,
                    autofocus: true,
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
