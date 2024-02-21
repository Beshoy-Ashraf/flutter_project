import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget button({
  required String text,
  required Function function,
  double width = double.infinity,
  Color background = Colors.blue,
}) =>
    Container(
      width: width,
      color: background,
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
