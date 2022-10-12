import 'package:fawateerna_app/core/util/functions/navigate_and_finish.dart';
import 'package:fawateerna_app/core/util/styles/colors.dart';
import 'package:fawateerna_app/core/util/widgets/default_form_field.dart';
import 'package:fawateerna_app/core/util/widgets/my_button.dart';
import 'package:fawateerna_app/features/home/presentation/pages/home_screen.dart';
import 'package:fawateerna_app/features/login/presentation/cubit/cubit.dart';
import 'package:fawateerna_app/features/login/presentation/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
        create: (BuildContext context) => LoginCubit(),
        child: BlocConsumer<LoginCubit, LoginStates >(
        listener: (context, state){},
        builder: (context, state)
        {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
            child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Image(
                  image: AssetImage('assets/images/login.png'),
                  height: 220.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: defaultColor,
                  fontSize: 45.0,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'User Name',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        DefaultFormField(
                          controller: emailController,
                          hintText: 'admin@gmail.com',
                          suffixIcon: const Icon(Icons.email),
                          radius: 13.0,
                          hintColor: const Color(0xFFccd3d3),
                          fillColor: const Color(0xFFF5F5F5),
                          colorSide: const Color(0xFFF5F5F5),
                          type: TextInputType.emailAddress,
                          validate: 'please enter your email address',
                          isPassword: false,
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        const Text(
                          'password',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 17.0,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        DefaultFormField(
                          isPassword: LoginCubit.get(context).isPassword,
                          controller: passwordController,
                          hintText: 'password',
                          hintColor: const Color(0xFFccd3d3),
                          fillColor: const Color(0xFFF5F5F5),
                          colorSide: const Color(0xFFF5F5F5),
                          suffixIcon: IconButton(
                            icon : Icon(LoginCubit.get(context).suffix),
                            onPressed: ()
                            {
                              LoginCubit.get(context).changePassword();
                            },
                          ),
                          radius: 13.0,
                          type: TextInputType.visiblePassword,
                          validate: 'please enter your password',
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: ()
                              {
                                LoginCubit.get(context).changeRemember();
                              },
                              icon: Icon(LoginCubit.get(context).remember),
                            ),
                            const Text(
                              'remember me',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'forgot password?',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Center(
                          child: MyButton(
                            onClick: () {
                              if (formKey.currentState!.validate()) {
                                emailController.text;
                                passwordController.text;
                                navigateAndFinish(
                                    context, const HomeScreen());
                              }
                            },
                            text: 'login',
                            height: 50.0,
                            radius: 10.0,
                            background: defaultColor,
                            padding: 0.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
        }
        ),
        );
   }
  }

