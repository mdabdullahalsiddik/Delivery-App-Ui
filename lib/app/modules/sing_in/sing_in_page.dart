
import 'package:delivery_app_ui/app/core/widgets/custom_button.dart';
import 'package:delivery_app_ui/app/core/widgets/custom_text_field.dart';
import 'package:delivery_app_ui/app/core/utils/colors.dart';
import 'package:delivery_app_ui/app/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'sing_in_controller.dart';

class SingInPage extends GetView<SingInController> {
  const SingInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(ImageUrl.singINImage),
                  const Gap(5),
                  Text(
                    textAlign: TextAlign.center,
                    "Login to your account & start delivering.",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "mainFont",
                        ),
                  ),
                ],
              ),
              const Gap(20),
              Form(
                key: controller.forky,
                child: Column(
                  children: [
                    CustomTextFromField(
                      controller: controller.emailController,
                      hintText: "Enter Your Email",
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return "Email can't be empty";
                        }
                        return null;
                      },
                    ),
                    const Gap(5),
                    Obx(
                      () => CustomTextFromField(
                        controller: controller.passwordController,
                        hintText: "Enter Your Password",
                        obscureText: controller.passwordValidator.value,
                        textInputAction: TextInputAction.done,
                        suffixIcon: IconButton(
                          onPressed: () => controller.setPasswordValidator(),
                          icon: Icon(
                            controller.passwordValidator.value == true
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return "Password can't be empty";
                          }
                          return null;
                        },
                      ),
                    ),
                    const Gap(5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text(
                            textAlign: TextAlign.end,
                            "Forgot Password?",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: AllColors.redColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  fontFamily: "mainFont",
                                ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.call,
                    color: AllColors.redColor,
                    size: 20,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    " Login with phone number",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: AllColors.redColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "mainFont",
                        ),
                  ),
                ],
              ),
            ),
            CustomButton(
              text: "Login",
              onTap: () => controller.singIn(),
            ),
          ],
        ),
      ),
    );
  }
}
