import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/password_settings_model.dart';

/// A controller class for the PasswordSettingsScreen.
///
/// This class manages the state of the PasswordSettingsScreen, including the
/// current passwordSettingsModelObj
class PasswordSettingsController extends GetxController {
  TextEditingController passwordInputController = TextEditingController();

  TextEditingController newPasswordInputController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<PasswordSettingsModel> passwordSettingsModelObj =
      PasswordSettingsModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  Rx<bool> isShowPassword2 = true.obs;

  @override
  void onClose() {
    super.onClose();
    passwordInputController.dispose();
    newPasswordInputController.dispose();
    passwordController.dispose();
  }
}
