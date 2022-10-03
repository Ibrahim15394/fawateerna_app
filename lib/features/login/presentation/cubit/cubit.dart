import 'package:bloc/bloc.dart';
import 'package:fawateerna_app/features/login/presentation/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AppCubit extends Cubit<LoginStates> {
  AppCubit() : super(LoginInitialStates());

  static AppCubit get(context) => BlocProvider.of(context);
  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;

  void changePassword ()
  {
    isPassword = !isPassword ;
    suffix = isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(ChangePasswordStates());
  }

  IconData remember =  Icons.crop_square;
  bool isRemember = true;

  void changeRemember ()
  {
    isRemember = !isRemember;
    remember = isRemember ?  Icons.crop_square : Icons.add_box;
    emit(ChangeRememberStates());

  }

  }