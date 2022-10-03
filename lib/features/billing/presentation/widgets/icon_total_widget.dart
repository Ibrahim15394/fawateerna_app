import 'package:flutter/material.dart';

class IconTotalWidget extends StatelessWidget {
  const IconTotalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
            InkWell(
              onTap: (){},
              child: const Icon(
                Icons.remove,
                color: Colors.grey,
              ),
            ),
            InkWell(
              onTap: (){},
              child: const Icon(
                Icons.ac_unit_outlined,
                color: Colors.grey,
              ),
            ),
            InkWell(
              onTap: (){},
              child: const Icon(
                Icons.edit,
                color: Colors.grey,
              ),
            ),
            InkWell(
              onTap: (){},
              child: const Icon(
                Icons.print,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        const Spacer(),
        RichText(
          text: const TextSpan(
              children: [
                TextSpan(
                    text: 'Total ',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey,
                    )
                ),
                TextSpan(
                    text: ' 250000',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    )
                ),
              ]
          ),
        ),
      ],
    );
  }
}
