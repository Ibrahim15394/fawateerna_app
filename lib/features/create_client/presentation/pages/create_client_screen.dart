import 'package:fawateerna_app/core/util/cubit/states.dart';
import 'package:fawateerna_app/core/util/functions/navigate_and_finish.dart';
import 'package:fawateerna_app/core/util/styles/colors.dart';
import 'package:fawateerna_app/features/home/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/util/cubit/cubit.dart';
import '../../../../core/util/widgets/default_form_field.dart';
import '../../../../core/util/widgets/my_button.dart';
import '../../../../data/models/client_model.dart';


class CreateClientScreen extends StatelessWidget {
   CreateClientScreen({Key? key}) : super(key: key);

   final TextEditingController clientNameArController = TextEditingController();
   final TextEditingController clientNameEnController = TextEditingController();
   final TextEditingController phoneController = TextEditingController();
   final TextEditingController emailController = TextEditingController();
   final TextEditingController addressController = TextEditingController();
   final TextEditingController taxController = TextEditingController();
   final TextEditingController noteController = TextEditingController();

    var formKey = GlobalKey<FormState>();

    String? name, phone, email ;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
        listener: (context, state){},
        builder: (context, state){
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              leading: IconButton(
                onPressed: () {
                  navigateAndFinish(context, const HomeScreen());
                },
                icon: const Icon(
                  Icons.arrow_back_ios_rounded,
                  color: defaultColor,
                ),
              ),
            ),
            body: BlocConsumer<AppCubit, AppStates>(
              listener: (context, state) {},
              builder: (context, state) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 0.0, left: 20.0, bottom: 20.0, right: 20.0),
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Client Name In Arabic',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w500,
                              color: defaultColor,
                            ),
                          ),
                          const SizedBox(height: 5.0,),
                          DefaultFormField(
                            isPassword: false,
                            //LoginCubit.get(context).isPassword,
                            controller: clientNameArController,
                            hintText: 'Client Name In Arabic',
                            hintColor: const Color(0xFFccd3d3),
                            fillColor: const Color(0xFFF5F5F5),
                            colorSide: const Color(0xFFF5F5F5),
                            radius: 15.0,
                            type: TextInputType.text,
                            validate: 'please enter Client Name',
                            suffixIcon: const Icon(
                              Icons.person,
                              color: Color(0xFFccd3d3),
                            ),
                          ),
                          const SizedBox(height: 10.0,),
                          const Text(
                            'Client Name In English',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w500,
                              color: defaultColor,
                            ),
                          ),
                          const SizedBox(height: 5.0,),
                          DefaultFormField(
                            isPassword: false,
                            //LoginCubit.get(context).isPassword,
                            controller: clientNameEnController,
                            hintText: 'Client Name In English',
                            hintColor: const Color(0xFFccd3d3),
                            fillColor: const Color(0xFFF5F5F5),
                            colorSide: const Color(0xFFF5F5F5),
                            radius: 15.0,
                            type: TextInputType.text,
                            suffixIcon: const Icon(
                              Icons.person,
                              color: Color(0xFFccd3d3),
                            ),
                          ),
                          const SizedBox(height: 10.0,),
                          const Text(
                            'Phone',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w500,
                              color: defaultColor,
                            ),
                          ),
                          const SizedBox(height: 5.0,),
                          DefaultFormField(
                            isPassword: false,
                            controller: phoneController,
                            hintText: 'Phone',
                            hintColor: const Color(0xFFccd3d3),
                            fillColor: const Color(0xFFF5F5F5),
                            colorSide: const Color(0xFFF5F5F5),
                            radius: 15.0,
                            type: TextInputType.number,
                            suffixIcon: const Icon(
                              Icons.phone_android_outlined,
                              color: Color(0xFFccd3d3),
                            ),
                          ),
                          const SizedBox(height: 10.0,),
                          const Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w500,
                              color: defaultColor,
                            ),
                          ),
                          const SizedBox(height: 5.0,),
                          DefaultFormField(
                            isPassword: false,
                            controller: emailController,
                            hintText: 'Email',
                            hintColor: const Color(0xFFccd3d3),
                            fillColor: const Color(0xFFF5F5F5),
                            colorSide: const Color(0xFFF5F5F5),
                            radius: 15.0,
                            type: TextInputType.emailAddress,
                            suffixIcon: const Icon(
                              Icons.email_outlined,
                              color: Color(0xFFccd3d3),
                            ),
                          ),
                          const SizedBox(height: 10.0,),
                          const Text(
                            'Address',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w500,
                              color: defaultColor,
                            ),
                          ),
                          const SizedBox(height: 5.0,),
                          DefaultFormField(
                            isPassword: false,
                            controller: addressController,
                            hintText: 'Address',
                            hintColor: const Color(0xFFccd3d3),
                            fillColor: const Color(0xFFF5F5F5),
                            colorSide: const Color(0xFFF5F5F5),
                            radius: 15.0,
                            type: TextInputType.text,
                            suffixIcon: const Icon(
                              Icons.add_to_home_screen_rounded,
                              color: Color(0xFFccd3d3),
                            ),
                          ),
                          const SizedBox(height: 10.0,),
                          const Text(
                            'Tax Registration Number',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w500,
                              color: defaultColor,
                            ),
                          ),
                          const SizedBox(height: 5.0,),
                          DefaultFormField(
                            isPassword: false,
                            controller: taxController,
                            hintText: 'Tax Registration Number',
                            hintColor: const Color(0xFFccd3d3),
                            fillColor: const Color(0xFFF5F5F5),
                            colorSide: const Color(0xFFF5F5F5),
                            radius: 15.0,
                            type: TextInputType.number,
                            suffixIcon: const Icon(
                              Icons.money,
                              color: Color(0xFFccd3d3),
                            ),
                          ),
                          const SizedBox(height: 10.0,),
                          const Text(
                            'Note',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w500,
                              color: defaultColor,
                            ),
                          ),
                          const SizedBox(height: 5.0,),
                          DefaultFormField(
                            isPassword: false,
                            controller: noteController,
                            hintText: 'note',
                            hintColor: const Color(0xFFccd3d3),
                            fillColor: const Color(0xFFF5F5F5),
                            colorSide: const Color(0xFFF5F5F5),
                            radius: 15.0,
                            type: TextInputType.text,
                            padding: const EdgeInsets.all(40.0),
                          ),
                          const SizedBox(height: 20.0,),
                          MyButton(
                            onClick: () {

                            },
                            text: 'Add',
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
                );
              },

            ),
          );
        },

    );
  }

}