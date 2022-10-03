import 'package:flutter/material.dart';

import '../../../../core/util/styles/colors.dart';

class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(
        color: defaultColor,
      ),
      child:Column(
        children: [
          InkWell(
            onTap: (){},
            child: ClipOval(
              child: Image(
                image: AssetImage('assets/images/person1.jpg'),
                width: 100.0,
                height: 100.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          Text(
            'Ibrahim Morsy',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
