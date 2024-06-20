import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/forgot_password_model.dart';

/// A controller class for the ForgotPasswordScreen.
///
/// This class manages the state of the ForgotPasswordScreen, including the
/// current forgotPasswordModelObj
class ForgotPasswordController extends GetxController {
  TextEditingController emailInputController = TextEditingController();

  Rx<ForgotPasswordModel> forgotPasswordModelObj = ForgotPasswordModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailInputController.dispose();
  }
}
