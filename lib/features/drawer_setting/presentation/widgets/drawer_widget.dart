import 'package:fawateerna_app/core/util/functions/navigate_to.dart';
import 'package:fawateerna_app/features/drawer_setting/presentation/widgets/drawer_header_widget.dart';
import 'package:fawateerna_app/features/drawer_setting/presentation/widgets/list_tile_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../change_password/presentation/pages/change_password_screen.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  bool value = false;

  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(
        children: [
          DrawerHeaderWidget(),
          SizedBox(height: 10.0,),
          ListTileWidget(
            onTap: ()
            {
              navigateTo(context, ChangePasswordScreen());
            },
            iconLeading: Icons.password_outlined,
            text: 'ChangePassword',
            widgetTrailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 13.0,),
          ListTileWidget(
            onTap: () {},
            iconLeading: Icons.language_outlined,
            text: 'Language',
            widgetTrailing:  Transform.scale(
              scale: 0.7,
              child: CupertinoSwitch(
                activeColor: Colors.blue,
                trackColor: Colors.grey,
                value: value,
                onChanged: (newValue)
                {
                  setState((){
                    value = newValue;
                  });
                },
              ),
            ),
          ),
          SizedBox(height: 13.0,),
          ListTileWidget(
            onTap: (){},
            iconLeading: Icons.logout_outlined,
            text: 'Logout',
            widgetTrailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
