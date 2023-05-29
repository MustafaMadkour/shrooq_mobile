import 'package:alshrooq/controller/auth/forget_pass_controller.dart';
import 'package:alshrooq/core/constants/color.dart';
import 'package:alshrooq/core/functions/validator.dart';
import 'package:alshrooq/view/widget/auth/aut_title.dart';
import 'package:alshrooq/view/widget/auth/auth_body.dart';
import 'package:alshrooq/view/widget/auth/auth_button.dart';
import 'package:alshrooq/view/widget/auth/auth_subtitle.dart';
import 'package:alshrooq/view/widget/auth/auth_textform.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ForgetPassController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: AuthTitle(
          title: "forgetpass_title".tr,
        ),
      ),
      body: GetBuilder<ForgetPassController>(
        builder: (controller) => Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: Form(
            key: controller.formstate,
            child: ListView(
              children: [
                const SizedBox(
                  height: 10,
                ),
                AuthSubTitle(
                  subtitle: "forgetpass_subtitle".tr,
                ),
                const SizedBox(
                  height: 30,
                ),
                AuthBody(
                  bodytext: "forgetpass_body".tr,
                ),
                const SizedBox(
                  height: 40,
                ),
                AuthTextForm(
                  isNum: false,
                  labeltext: "email_label".tr,
                  hinttext: "email_hint".tr,
                  fieldicon: Icons.email_outlined,
                  myController: controller.email,
                  validate: (val) {
                    return validator(val!, 5, 100, "email_label".tr);
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                AuthButton(
                  text: "code".tr,
                  onPressed: () {
                    controller.toVerifyForget();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
