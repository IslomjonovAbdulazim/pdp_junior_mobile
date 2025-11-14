import 'package:flutter/material.dart';
import 'package:pdp_junior_mobile/widgets/text_widget.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Center(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    "assets/app_logo.png",
                    height: 200,
                    width: 200,
                  ),
                ),
                MyText.headline("PDP Junior"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
