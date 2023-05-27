import 'package:alshrooq/controller/auth/register_controller.dart';
import 'package:alshrooq/core/constants/color.dart';
import 'package:alshrooq/view/widget/auth/aut_title.dart';
import 'package:alshrooq/view/widget/auth/auth_body.dart';
import 'package:alshrooq/view/widget/auth/auth_button.dart';
import 'package:alshrooq/view/widget/auth/auth_subtitle.dart';
import 'package:alshrooq/view/widget/auth/auth_textform.dart';
import 'package:alshrooq/view/widget/auth/auth_to_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterController controller = Get.put(RegisterController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: AuthTitle(
          title: "register_title".tr,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            AuthSubTitle(
              subtitle: "register_subtitle".tr,
            ),
            const SizedBox(
              height: 10,
            ),
            AuthBody(
              bodytext: "register_body".tr,
            ),
            const SizedBox(
              height: 30,
            ),
            AuthTextForm(
              labeltext: "username_label".tr,
              hinttext: "username_hint".tr,
              fieldicon: Icons.person,
              myController: controller.username,
            ),
            const SizedBox(
              height: 20,
            ),
            AuthTextForm(
              labeltext: "phone_label".tr,
              hinttext: "phone_hint".tr,
              fieldicon: Icons.phone_android_outlined,
              myController: controller.phone,
            ),
            const SizedBox(
              height: 20,
            ),
            AuthTextForm(
              labeltext: "email_label".tr,
              hinttext: "email_hint".tr,
              fieldicon: Icons.email_outlined,
              myController: controller.email,
            ),
            const SizedBox(
              height: 20,
            ),
            AuthTextForm(
              labeltext: "pass_label".tr,
              hinttext: "pass_hint".tr,
              fieldicon: Icons.lock_outline,
              myController: controller.password,
            ),
            const SizedBox(
              height: 20,
            ),
            AuthTextForm(
              labeltext: "pass_confirm_label".tr,
              hinttext: "pass_confirm_hint".tr,
              fieldicon: Icons.lock_outline,
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 20,
            ),
            AuthButton(
              text: "signup".tr,
              onPressed: () {
                controller.register();
              },
            ),
            const SizedBox(
              height: 10,
            ),
            AuthToPage(
              text: "to_signin".tr,
              linkText: "signin".tr,
              onTap: () {
                controller.toLogin();
              },
            ),
          ],
        ),
      ),
    );
  }
}
