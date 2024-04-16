// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_typing_uninitialized_variables
import 'package:delivery_app_ui/app/core/utils/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  
  
  var icon;
  final String title;
  final String money;
  CustomCard({
    super.key,
    required this.icon,
    required this.title,
    required this.money,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 120,
      child: Card(
        elevation: 0,
        color: AllColors.whiteColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              icon,
            ),
            Text(
              textAlign: TextAlign.center,
              title,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AllColors.blackColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    fontFamily: "mainFont",
                  ),
            ),
            Text(
              textAlign: TextAlign.center,
              money,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AllColors.naveGreenColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    fontFamily: "mainFont",
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
