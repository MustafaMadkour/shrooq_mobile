import 'package:alshrooq/controller/onboarding_controller.dart';
import 'package:alshrooq/core/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingButton extends GetView<OnBoardingController> {
  const OnBoardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                    margin: const EdgeInsets.only(bottom: 40),
                    height: 40,
                    child: MaterialButton(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100, vertical: 0),
                      onPressed: () {
                        controller.next();
                      },
                      color: AppColor.primaryColor,
                      textColor: AppColor.white,
                      child: const Text(
                        "Continue",
                      ),
                    ),
                  );
  }
}