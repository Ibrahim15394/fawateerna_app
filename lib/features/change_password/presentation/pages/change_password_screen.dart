import 'package:flutter/material.dart';
import '../../../../core/util/styles/colors.dart';
import '../../../../core/util/widgets/default_form_field.dart';
import '../../../../core/util/widgets/my_button.dart';

class ChangePasswordScreen extends StatelessWidget {
   ChangePasswordScreen({Key? key}) : super(key: key);

  final changePasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

   var formKey = GlobalKey<FormState>();

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      title: Text(
        'Change Password',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
        ),
      ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Current password',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: 5.0,),
                DefaultFormField(
                  isPassword: true,
                  //LoginCubit.get(context).isPassword,
                  controller: changePasswordController,
                  hintText: 'Current password',
                  hintColor: const Color(0xFFccd3d3),
                  fillColor: const Color(0xFFF5F5F5),
                  colorSide: const Color(0xFFF5F5F5),
                  // suffixIcon: IconButton(
                  //   icon : Icon(LoginCubit.get(context).suffix),
                  //   onPressed: ()
                  //   {
                  //     LoginCubit.get(context).changePassword();
                  //   },
                  // ),
                  radius: 13.0,
                  type: TextInputType.visiblePassword,
                  validate: 'please enter your Current password',
                ),
                SizedBox(height: 15.0,),
                Text(
                  'New password',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: 5.0,),
                DefaultFormField(
                  isPassword: true,
                  //LoginCubit.get(context).isPassword,
                  controller: newPasswordController,
                  hintText: 'New password',
                  hintColor: const Color(0xFFccd3d3),
                  fillColor: const Color(0xFFF5F5F5),
                  colorSide: const Color(0xFFF5F5F5),
                  // suffixIcon: IconButton(
                  //   icon : Icon(LoginCubit.get(context).suffix),
                  //   onPressed: ()
                  //   {
                  //     LoginCubit.get(context).changePassword();
                  //   },
                  // ),
                  radius: 13.0,
                  type: TextInputType.visiblePassword,
                  validate: 'please enter your New password',
                ),
                SizedBox(height: 15.0,),
                Text(
                  'Confirm Password',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: 5.0,),
                DefaultFormField(
                  isPassword: true,
                  //LoginCubit.get(context).isPassword,
                  controller: confirmPasswordController,
                  hintText: 'New password',
                  hintColor: const Color(0xFFccd3d3),
                  fillColor: const Color(0xFFF5F5F5),
                  colorSide: const Color(0xFFF5F5F5),
                  // suffixIcon: IconButton(
                  //   icon : Icon(LoginCubit.get(context).suffix),
                  //   onPressed: ()
                  //   {
                  //     LoginCubit.get(context).changePassword();
                  //   },
                  // ),
                  radius: 13.0,
                  type: TextInputType.visiblePassword,
                  validate: 'please enter your Confirm Password',
                ),
                SizedBox(height: 50.0,),
                MyButton(
                  onClick: () {
                    if (formKey.currentState!.validate()) {

                    }
                  },
                  text: 'Save',
                  height: 50.0,
                  radius: 10.0,
                  background: defaultColor,
                  padding: 0.0,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
