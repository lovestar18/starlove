import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/login_version_2_model.dart';

/// A controller class for the LoginVersion2Screen.
///
/// This class manages the state of the LoginVersion2Screen, including the
/// current loginVersion2ModelObj
class LoginVersion2Controller extends GetxController {
  TextEditingController emailInputFieldController = TextEditingController();

  TextEditingController passwordInputFieldController = TextEditingController();

  Rx<LoginVersion2Model> loginVersion2ModelObj = LoginVersion2Model().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> rememberMeCheckbox = false.obs;

  @override
  void onClose() {
    super.onClose();
    emailInputFieldController.dispose();
    passwordInputFieldController.dispose();
  }

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.signUpVersion2Screen,
      );
    });
  }
}
