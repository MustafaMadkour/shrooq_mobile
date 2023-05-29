import 'package:alshrooq/controller/auth/login_controller.dart';
import 'package:alshrooq/core/constants/color.dart';
import 'package:alshrooq/core/functions/validator.dart';
import 'package:alshrooq/view/widget/auth/aut_title.dart';
import 'package:alshrooq/view/widget/auth/auth_body.dart';
import 'package:alshrooq/view/widget/auth/auth_button.dart';
import 'package:alshrooq/view/widget/auth/auth_logo.dart';
import 'package:alshrooq/view/widget/auth/auth_subtitle.dart';
import 'package:alshrooq/view/widget/auth/auth_textform.dart';
import 'package:alshrooq/view/widget/auth/auth_to_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => LoginController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: AuthTitle(
          title: "login_title".tr,
        ),
      ),
      body: GetBuilder<LoginController>(
        builder: ((controller) => Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: Form(
                key: controller.formstate,
                child: ListView(
                  children: [
                    const AuthLogo(),
                    const SizedBox(
                      height: 10,
                    ),
                    AuthSubTitle(
                      subtitle: "login_subtitle".tr,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AuthBody(
                      bodytext: "login_body".tr,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    AuthTextForm(
                      labeltext: "email_label".tr,
                      hinttext: "email_hint".tr,
                      fieldicon: Icons.email_outlined,
                      myController: controller.email,
                      validate: (val) {
                        return validator(val!, 5, 100, "email_label".tr);
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AuthTextForm(
                      labeltext: "pass_label".tr,
                      hinttext: "pass_hint".tr,
                      fieldicon: Icons.lock_outline,
                      myController: controller.password,
                      validate: (val) {
                        return validator(val!, 5, 30, "pass_label".tr);
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        controller.toForgetPass();
                      },
                      child: Text(
                        "forget".tr,
                        textAlign: TextAlign.end,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AuthButton(
                      text: "signin".tr,
                      onPressed: () {
                        controller.login();
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AuthToPage(
                      text: "to_signup".tr,
                      linkText: "signup".tr,
                      onTap: () {
                        controller.toRegster();
                      },
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
