import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/password_settings_model.dart';

/// A controller class for the PasswordSettingsScreen.
///
/// This class manages the state of the PasswordSettingsScreen, including the
/// current passwordSettingsModelObj
class PasswordSettingsController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  TextEditingController password1Controller = TextEditingController();

  TextEditingController password2Controller = TextEditingController();

  Rx<PasswordSettingsModel> passwordSettingsModelObj =
      PasswordSettingsModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  Rx<bool> isShowPassword2 = true.obs;

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
    password1Controller.dispose();
    password2Controller.dispose();
  }
}
