import 'package:flutter/material.dart';

class ImageSplash extends StatelessWidget {
  const ImageSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Image.asset(
      'assets/images/img.png',
      width: double.infinity,
      fit:BoxFit.cover,
    );
  }
}
