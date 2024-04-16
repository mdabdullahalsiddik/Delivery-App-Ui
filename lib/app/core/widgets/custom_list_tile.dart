// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:delivery_app_ui/app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final String money;
  const CustomListTile({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.money,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      leading: Image.asset(
        image,
        height: 60,
        width: 50,
      ),
      title: Text(
        textAlign: TextAlign.start,
        title,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AllColors.blackColor,
              fontWeight: FontWeight.w500,
              fontSize: 14,
              fontFamily: "mainFont",
            ),
      ),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textAlign: TextAlign.start,
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AllColors.blackColor.withOpacity(.7),
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  fontFamily: "mainFont",
                ),
          ),
          Text(
            textAlign: TextAlign.start,
            money,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AllColors.naveGreenColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  fontFamily: "mainFont",
                ),
          ),
        ],
      ),
    );
  }
}
