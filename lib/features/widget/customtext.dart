import 'package:flutter/material.dart';

Widget Space(height, witdh) {
  double height2 = height.toDouble();
  double witdh2 = witdh.toDouble();
  return SizedBox(
    height: height2,
    width: witdh2,
  );
}

customSnakBar(context, text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.grey,
      content: customText(text: text, size: 15, color: Colors.black87)));
}

customText({
  required String text,
  required double size,
  int fontValue = 500,
  Color color = Colors.black,
  String fontFamily = "Montserrat",
  TextDecoration? txtDecoration,
  FontStyle? fontStyle,
  TextOverflow? overFlow,
}) {
  FontWeight? fontWeight;
  switch (fontValue) {
    case 200:
      fontWeight = FontWeight.w200;

      break;
    case 300:
      fontWeight = FontWeight.w300;

      break;
    case 400:
      fontWeight = FontWeight.w400;
      break;
    case 500:
      fontWeight = FontWeight.w500;
      break;
    case 600:
      fontWeight = FontWeight.w600;
      break;

    default:
      fontWeight = FontWeight.w500;
      break;
  }

  return Text(
    text,
    style: TextStyle(
      fontSize: size,
      fontWeight: fontWeight,
      overflow: overFlow,
      color: color,
      fontStyle: fontStyle,
      fontFamily: fontFamily,
      decoration: txtDecoration,
    ),
  );
}
