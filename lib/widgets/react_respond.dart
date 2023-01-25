import 'package:flutter/material.dart';

class ReactResponse extends StatelessWidget {
  final Color? color;
  String? buttonType;
  Function()? onPressed;
  double width;

  ReactResponse(
      {required this.color,
        required this.buttonType,
        required this.onPressed,
        required this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1.0),
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.0),
        ),
        elevation: 10.0,
        color: color,
        child: MaterialButton(
          elevation: 20.0,
          minWidth: width,
          height: 5.0,
          onPressed: onPressed,
          child: Text(
            buttonType!,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}