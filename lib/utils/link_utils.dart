import 'package:url_launcher/url_launcher.dart';

class LinkUtils {
  static void open(String url) async {
    try {
      await launchUrl(
        Uri.parse(url),
        mode: LaunchMode.externalApplication,
      );
    } catch (e) {
      print("Link ochishda xatolik: $e");
    }
  }
}
