// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:delivery_app_ui/app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final void Function()? onTap;
  final double? width;
  final double? height;
  final Color? cardColor;
  final Color? textColor;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.width,
    this.height,
    this.cardColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: width ?? MediaQuery.of(context).size.width,
        height: height ?? MediaQuery.of(context).size.height * 0.07,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: cardColor ?? AllColors.redColor,
          child: Center(
            child: Text(
              text ?? "",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: textColor ?? AllColors.whiteColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    fontFamily: "mainFont",
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
