import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';
import '../../../core/app_export.dart';
import '../models/email_verification_model.dart';

/// A controller class for the EmailVerificationScreen.
///
/// This class manages the state of the EmailVerificationScreen, including the
/// current emailVerificationModelObj
class EmailVerificationController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<EmailVerificationModel> emailVerificationModelObj =
      EmailVerificationModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }
}
