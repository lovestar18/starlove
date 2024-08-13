import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/password_reset1_model.dart';

/// A controller class for the PasswordReset1Bottomsheet.
///
/// This class manages the state of the PasswordReset1Bottomsheet, including the
/// current passwordReset1ModelObj
class PasswordReset1Controller extends GetxController {
  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  Rx<PasswordReset1Model> passwordReset1ModelObj = PasswordReset1Model().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  @override
  void onClose() {
    super.onClose();
    newpasswordController.dispose();
    confirmpasswordController.dispose();
  }
}
