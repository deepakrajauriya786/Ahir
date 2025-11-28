import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shortzz/common/widget/custom_back_button.dart';
import 'package:shortzz/common/widget/gradient_text.dart';
import 'package:shortzz/common/widget/privacy_policy_text.dart';
import 'package:shortzz/common/widget/text_button_custom.dart';
import 'package:shortzz/common/widget/text_field_custom.dart';
import 'package:shortzz/languages/languages_keys.dart';
import 'package:shortzz/screen/auth_screen/auth_screen_controller.dart';
import 'package:shortzz/utilities/style_res.dart';
import 'package:shortzz/utilities/text_style_custom.dart';
import 'package:shortzz/utilities/theme_res.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AuthScreenController>();
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const CustomBackButton(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5)),
            const SizedBox(height: 50),
            TextFieldCustom(
              controller: controller.otpController,
              title: LKey.otp.tr,
              keyboardType: TextInputType.phone,
            ),
            TextButtonCustom(
                onTap: controller.onLoginMobile,
                title: LKey.otpVerify.tr,
                backgroundColor: textDarkGrey(context),
                horizontalMargin: 20,
                titleColor: whitePure(context)),
            SizedBox(height: AppBar().preferredSize.height / 1.2),
            const SafeArea(
                top: false,
                maintainBottomViewPadding: true,
                child: PrivacyPolicyText()),
          ],
        ),
      ),
    );
  }
}
