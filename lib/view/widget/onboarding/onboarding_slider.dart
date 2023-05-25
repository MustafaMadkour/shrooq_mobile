import 'package:alshrooq/controller/onboarding_controller.dart';
import 'package:alshrooq/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingSlider extends GetView<OnBoardingController> {
  const OnBoardingSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChange(value);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          Image.asset(
            height: 330,
            onBoardingList[i].image!,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            onBoardingList[i].title!,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
           const SizedBox(
            height: 40,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[i].body!,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          )
        ],
      ),
    );
  }
}
