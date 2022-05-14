import 'package:flutter/material.dart';

class TBIBFontStyle {
  static TextStyle h1 = const TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      height: 1.2,
      color: Colors.black);
  static TextStyle h2 = const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      height: 1.2,
      color: Colors.black);
  static TextStyle h3 = const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      height: 1.2,
      color: Colors.black);
  static TextStyle h4 = const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      height: 1.2,
      color: Colors.black);
  static TextStyle h5 =
      const TextStyle(fontSize: 20, height: 1.2, color: Colors.black);
  static TextStyle h6 =
      const TextStyle(fontSize: 16, height: 1.2, color: Colors.black);
  static TextStyle b1 = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      height: 1.2,
      color: Colors.black);
  static TextStyle b2 = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 1.2,
      color: Colors.black);

  static TextStyle h1Dark = const TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      height: 1.2,
      color: Colors.white);
  static TextStyle h2Dark = const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      height: 1.2,
      color: Colors.white);
  static TextStyle h3Dark = const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      height: 1.2,
      color: Colors.white);
  static TextStyle h4Dark = const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      height: 1.2,
      color: Colors.white);
  static TextStyle h5Dark =
      const TextStyle(fontSize: 20, height: 1.2, color: Colors.white);
  static TextStyle h6Dark =
      const TextStyle(fontSize: 16, height: 1.2, color: Colors.white);
  static TextStyle b1Dark = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      height: 1.2,
      color: Colors.white);
  static TextStyle b2Dark = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 1.2,
      color: Colors.white);

  static defaultFlutterStyle() {
    h1 = const TextStyle(
        fontSize: 96, fontWeight: FontWeight.w300, height: -1.5);
    h1Dark = h1.copyWith(color: Colors.white);
    h2 =
        const TextStyle(fontSize: 60, fontWeight: FontWeight.w300, height: -.5);
    h2Dark = h2.copyWith(color: Colors.white);
    h3 = const TextStyle(fontSize: 48, fontWeight: FontWeight.w400);
    h3Dark = h3.copyWith(color: Colors.white);
    h4 =
        const TextStyle(fontSize: 34, fontWeight: FontWeight.w300, height: .25);
    h4Dark = h4.copyWith(color: Colors.white);
    h5 = const TextStyle(fontSize: 24, fontWeight: FontWeight.w300);
    h5Dark = h5.copyWith(color: Colors.white);
    h6 =
        const TextStyle(fontSize: 20, fontWeight: FontWeight.w500, height: .15);
    h6Dark = h6.copyWith(color: Colors.white);
    b1 = const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, height: .5);
    b1Dark = b1.copyWith(color: Colors.white);
    b2 =
        const TextStyle(fontSize: 14, fontWeight: FontWeight.w400, height: .15);
    b2Dark = b2.copyWith(color: Colors.white);
  }

  static lisenGoogleFont(TextStyle googleFontsName, {int? h}) {
    if (h != null) {
      switch (h) {
        case 1:
          {
            h1Dark = h1 = h1.copyWith(fontFamily: googleFontsName.fontFamily);
            h1Dark = h1Dark.copyWith(color: Colors.white);
            return;
          }
        case 2:
          {
            h2Dark = h2 = h2.copyWith(fontFamily: googleFontsName.fontFamily);
            h2Dark = h2Dark.copyWith(color: Colors.white);
            return;
          }
        case 3:
          {
            h3Dark = h3 = h3.copyWith(fontFamily: googleFontsName.fontFamily);
            h3Dark = h3Dark.copyWith(color: Colors.white);

            return;
          }
        case 4:
          {
            h4Dark = h4 = h4.copyWith(fontFamily: googleFontsName.fontFamily);
            h4Dark = h4Dark.copyWith(color: Colors.white);

            return;
          }
        case 5:
          {
            h5Dark = h5 = b1 =
                b1Dark = h5.copyWith(fontFamily: googleFontsName.fontFamily);
            h5Dark = h5Dark.copyWith(color: Colors.white);
            b1Dark = b1Dark.copyWith(color: Colors.white);

            return;
          }
        case 6:
          {
            h6 = h6Dark = b2 =
                b2Dark = h6.copyWith(fontFamily: googleFontsName.fontFamily);
            h6Dark = h6Dark.copyWith(color: Colors.white);
            b2Dark = b2Dark.copyWith(color: Colors.white);

            return;
          }
        default:
          {
            return null;
          }
      }
    } else {
      h1Dark = h1 = googleFontsName.copyWith(
          fontSize: 40, fontWeight: FontWeight.bold, height: 1.2);
      h1Dark = h1Dark.copyWith(color: Colors.white);

      h2Dark = h2 = googleFontsName.copyWith(
          fontSize: 32, fontWeight: FontWeight.w600, height: 1.2);
      h2Dark = h2Dark.copyWith(color: Colors.white);

      h3Dark = h3 = googleFontsName.copyWith(
          fontSize: 28, fontWeight: FontWeight.w600, height: 1.2);
      h3Dark = h3Dark.copyWith(color: Colors.white);

      h4Dark = h4 = googleFontsName.copyWith(
          fontSize: 24, fontWeight: FontWeight.w500, height: 1.2);
      h4Dark = h4Dark.copyWith(color: Colors.white);

      h5Dark = h5 =
          b1 = b1Dark = googleFontsName.copyWith(fontSize: 20, height: 1.2);
      h5Dark = h5Dark.copyWith(color: Colors.white);
      b1Dark = b1Dark.copyWith(color: Colors.white);

      h6 = h6Dark =
          b2 = b2Dark = googleFontsName.copyWith(fontSize: 16, height: 1.2);
      h6Dark = h6Dark.copyWith(color: Colors.white);
      b2Dark = b2Dark.copyWith(color: Colors.white);
    }
  }

  static void addCustomFont(String yourFontFamily, {int? h}) {
    if (h != null) {
      switch (h) {
        case 1:
          {
            h1 = h1.copyWith(fontFamily: yourFontFamily);
            h1Dark = h1Dark.copyWith(fontFamily: yourFontFamily);

            break;
          }
        case 2:
          {
            h2 = h2.copyWith(fontFamily: yourFontFamily);
            h2Dark = h2Dark.copyWith(fontFamily: yourFontFamily);
            break;
          }
        case 3:
          {
            h3 = h3.copyWith(fontFamily: yourFontFamily);
            h3Dark = h3Dark.copyWith(fontFamily: yourFontFamily);
            break;
          }
        case 4:
          {
            h4 = h4.copyWith(fontFamily: yourFontFamily);
            h4Dark = h4Dark.copyWith(fontFamily: yourFontFamily);
            break;
          }
        case 5:
          {
            h5 = h5.copyWith(fontFamily: yourFontFamily);
            h5Dark = h5Dark.copyWith(fontFamily: yourFontFamily);
            b1 = b1.copyWith(fontFamily: yourFontFamily);
            b1Dark = b1Dark.copyWith(fontFamily: yourFontFamily);
            break;
          }
        case 6:
          {
            h6 = h6.copyWith(fontFamily: yourFontFamily);
            h6Dark = h6Dark.copyWith(fontFamily: yourFontFamily);
            b2 = b2.copyWith(fontFamily: yourFontFamily);
            b2Dark = b2Dark.copyWith(fontFamily: yourFontFamily);
            break;
          }
        default:
          {
            break;
          }
      }
    } else {
      h1 = h1.copyWith(fontFamily: yourFontFamily);
      h1Dark = h1Dark.copyWith(fontFamily: yourFontFamily);
      h2 = h2.copyWith(fontFamily: yourFontFamily);
      h2Dark = h2Dark.copyWith(fontFamily: yourFontFamily);
      h3 = h3.copyWith(fontFamily: yourFontFamily);
      h3Dark = h3Dark.copyWith(fontFamily: yourFontFamily);
      h4 = h4.copyWith(fontFamily: yourFontFamily);
      h4Dark = h4Dark.copyWith(fontFamily: yourFontFamily);
      h5 = h5.copyWith(fontFamily: yourFontFamily);
      h5Dark = h5Dark.copyWith(fontFamily: yourFontFamily);
      h6 = h6.copyWith(fontFamily: yourFontFamily);
      h6Dark = h6Dark.copyWith(fontFamily: yourFontFamily);
      b1 = b1.copyWith(fontFamily: yourFontFamily);
      b1Dark = b1Dark.copyWith(fontFamily: yourFontFamily);
      b2 = b2.copyWith(fontFamily: yourFontFamily);
      b2Dark = b2Dark.copyWith(fontFamily: yourFontFamily);
    }
  }
}
