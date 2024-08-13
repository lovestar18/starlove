import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/forgot_password_model.dart';

/// A controller class for the ForgotPasswordBottomsheet.
///
/// This class manages the state of the ForgotPasswordBottomsheet, including the
/// current forgotPasswordModelObj
class ForgotPasswordController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<ForgotPasswordModel> forgotPasswordModelObj = ForgotPasswordModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
