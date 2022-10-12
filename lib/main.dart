import 'package:fawateerna_app/core/util/cubit/cubit.dart';
import 'package:fawateerna_app/core/util/cubit/states.dart';
import 'package:fawateerna_app/core/util/styles/themes.dart';
import 'package:fawateerna_app/features/home/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => AppCubit(),
        child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder:  (context, state) {
          return MaterialApp(
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: [
              Locale('en', ''),
              Locale('ar', ''),
            ],
            debugShowCheckedModeBanner:false,
            theme: lightTheme,
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}


