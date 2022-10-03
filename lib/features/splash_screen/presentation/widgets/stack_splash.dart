import 'package:flutter/material.dart';

class StackSplash extends StatelessWidget {
  const StackSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children:  const [
          Text(
            'مرحبا بك',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          Image(
            image: AssetImage('assets/images/fatora.png',),
          ),
          Text(
            'كل مايخص الفواتير الالكترونية',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17.0,
              // fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
