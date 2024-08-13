import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/password_settings_one_model.dart';

/// A controller class for the PasswordSettingsOneScreen.
///
/// This class manages the state of the PasswordSettingsOneScreen, including the
/// current passwordSettingsOneModelObj
class PasswordSettingsOneController extends GetxController {
  TextEditingController currentPasswordFieldController =
      TextEditingController();

  TextEditingController newPasswordFieldController = TextEditingController();

  TextEditingController confirmPasswordFieldController =
      TextEditingController();

  Rx<PasswordSettingsOneModel> passwordSettingsOneModelObj =
      PasswordSettingsOneModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  Rx<bool> isShowPassword2 = true.obs;

  @override
  void onClose() {
    super.onClose();
    currentPasswordFieldController.dispose();
    newPasswordFieldController.dispose();
    confirmPasswordFieldController.dispose();
  }
}
