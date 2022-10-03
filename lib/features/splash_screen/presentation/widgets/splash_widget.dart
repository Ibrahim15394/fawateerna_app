import 'package:fawateerna_app/core/util/functions/navigate_and_finish.dart';
import 'package:fawateerna_app/features/on_boarding/presentation/pages/on_boarding_screen.dart';
import 'package:fawateerna_app/features/splash_screen/presentation/widgets/image_splash.dart';
import 'package:fawateerna_app/features/splash_screen/presentation/widgets/stack_splash.dart';
import 'package:flutter/material.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3,),()
    {
      navigateAndFinish(context, const OnBoardingScreen());
    });
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomRight,
        children: const [
          ImageSplash(),
          StackSplash(),
        ],
      ),
    );
  }
}
