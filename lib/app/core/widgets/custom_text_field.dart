// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:delivery_app_ui/app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final String? hintText;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? obscureText;
  const CustomTextFromField({
    super.key,
    this.controller,
    this.textInputAction,
    this.hintText,
    this.keyboardType,
    this.onChanged,
    this.validator,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText ?? false,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Colors.grey,
            fontWeight: FontWeight.w400,
            fontSize: 16,
            fontFamily: "mainFont",
          ),
      textInputAction: textInputAction ?? TextInputAction.next,
      keyboardType: keyboardType ?? TextInputType.text,
      validator: validator,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintText: hintText ?? "Enter text",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: AllColors.greyColor,
            width: 0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: AllColors.greyColor,
            width: 0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: AllColors.greyColor,
            width: 0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: AllColors.greyColor,
            width: 0,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: AllColors.greyColor,
            width: 0,
          ),
        ),
      ),
    );
  }
}
