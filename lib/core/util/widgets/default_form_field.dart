import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  final TextInputType type;
  final String? validate;
  final String? textLabel;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final double? radius;
  final bool isPassword ;
  final Color? fillColor;
  final Color? colorSide;
  final Color? hintColor;
  final EdgeInsetsGeometry? padding;

   const DefaultFormField({
    Key? key,
    required this.controller,
    required this.type,
     this.validate,
    this.textLabel,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    required this.radius,
     required this.isPassword,
     this.fillColor,
     this.colorSide,
     this.hintColor,
     this.padding,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return validate;
        }
        return null;
      },
      obscureText: isPassword,
      keyboardType: type,
      decoration: InputDecoration(
        fillColor: fillColor,
        filled: true,
        contentPadding: padding,
        prefixIcon: prefixIcon,
        hintText: hintText,
        suffixIcon: suffixIcon,
        hintStyle: TextStyle(
          color: hintColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius!),
          borderSide:  BorderSide(
            color: colorSide!,
          ),
        ),
      ),
    );
  }
}