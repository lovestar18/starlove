import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/password_reset_model.dart';

/// A controller class for the PasswordResetScreen.
///
/// This class manages the state of the PasswordResetScreen, including the
/// current passwordResetModelObj
class PasswordResetController extends GetxController {
  TextEditingController passwordInputController = TextEditingController();

  TextEditingController confirmPasswordInputController =
      TextEditingController();

  Rx<PasswordResetModel> passwordResetModelObj = PasswordResetModel().obs;

  @override
  void onClose() {
    super.onClose();
    passwordInputController.dispose();
    confirmPasswordInputController.dispose();
  }
}
