import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton {
  static Widget primary(
    VoidCallback onTap,
    String text, {
    Widget? leading,
    Widget? trailing,
  }) {
    return CupertinoButton(
      onPressed: onTap,
      color: Color(0xff00181d),
      borderRadius: BorderRadius.circular(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (leading != null) ...[
            leading,
            SizedBox(width: 8),
          ],
          Text(
            text,
            style: GoogleFonts.nunito(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          if (trailing != null) ...[
            SizedBox(width: 8),
            trailing,
          ],
        ],
      ),
    );
  }
}
