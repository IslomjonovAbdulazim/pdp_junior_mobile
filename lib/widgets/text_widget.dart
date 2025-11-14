import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText {
  static Widget headline(String text) {
    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: 40,
        fontWeight: FontWeight.w900,
        color: Color(0xff00181d),
      ),
    );
  }

  static Widget title(String text) {
    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: Color(0xff00181d),
      ),
    );
  }

  static Widget subtitle(String text) {
    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    );
  }

  static Widget body(String text) {
    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    );
  }

  static Widget small(String text) {
    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: 16,
        fontWeight: FontWeight.w300,
        color: Colors.black,
      ),
    );
  }

  static Widget caption(String text) {
    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: 14,
        fontWeight: FontWeight.w300,
        color: Colors.black,
      ),
    );
  }
}
