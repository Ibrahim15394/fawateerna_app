import 'package:flutter/material.dart';

class NameNumberWidget extends StatelessWidget {
  const NameNumberWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
                children: [
                  TextSpan(
                      text: 'Client Name  ',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey,
                      )
                  ),
                  TextSpan(
                      text: 'ibrahim morsy  ',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      )
                  ),
                ]
            ),
          ),
          const Spacer(),
          RichText(
            text: const TextSpan(
                children: [
                  TextSpan(
                      text: 'Bill Number   ',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey,
                      )
                  ),
                  TextSpan(
                      text: '137  ',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      )
                  ),
                ]
            ),
          ),
        ],
      ),
    );
  }
}
