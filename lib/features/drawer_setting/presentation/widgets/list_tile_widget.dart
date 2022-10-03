import 'package:fawateerna_app/core/util/styles/colors.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget(
      {Key? key,
      required this.iconLeading,
      required this.text,
      required this.onTap,
      required this.widgetTrailing})
      : super(key: key);

  final  IconData iconLeading;
  final String text;
  final GestureTapCallback onTap;
  final Widget widgetTrailing;

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color:  const Color(0xFFF5F5F5),
      ),
      child: ListTile(
        onTap: onTap,
        leading: Icon(
          iconLeading,
          color: Colors.grey,
        ),
        title: Text(
          text,
          style: TextStyle(
            color: defaultColor,
            fontSize: 18,
          ),
        ),
        trailing: widgetTrailing,
      ),
    );
  }
}
