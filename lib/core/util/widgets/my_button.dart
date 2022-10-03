import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final Color? background;
  final bool? isUpperCase;
  final double? radius;
  final VoidCallback? onClick;
  final Color? color;
  final double? padding;

  const MyButton({Key? key,
    required this.text,
    this.width = double.infinity,
    this.height,
    this.background,
    this.isUpperCase,
    this.radius,
    required this.onClick,
     this.color,
    this.padding,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:height ,
      width: width,
      child: MaterialButton(
        onPressed: onClick,
          color: background,
          padding:  EdgeInsets.all(padding!),
          textColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius!),
          ),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w500,
            ),
          ),
           ),
    );

  }
}