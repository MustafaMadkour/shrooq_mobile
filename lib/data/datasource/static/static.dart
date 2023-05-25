import 'package:alshrooq/core/constants/image_asset.dart';
import 'package:alshrooq/data/model/onboarding_model.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: "Choose Product",
      body:
          "We have more than 10K products\n You will find everything\n you need on Al-Shrooq catalog",
      image: ImageAsset.onBoardingImgOne),
  OnBoardingModel(
      title: "Cash on Delivery",
      body:
          "No credit cards for now\n You can pay cash on delivery \n more easy ways will be added later",
      image: ImageAsset.onBoardingImgTwo),
  OnBoardingModel(
      title: "Track Your Order",
      body:
          "You can track your order with Al-Shrooq \n You can see your order on the map\n on Al-Shrooq Shop",
      image: ImageAsset.onBoardingImgThree),
];
