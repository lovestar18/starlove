import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/sign_up_version_2_model.dart';

/// A controller class for the SignUpVersion2Screen.
///
/// This class manages the state of the SignUpVersion2Screen, including the
/// current signUpVersion2ModelObj
class SignUpVersion2Controller extends GetxController {
  TextEditingController fullNameInputController = TextEditingController();

  TextEditingController emailInputController = TextEditingController();

  TextEditingController phoneNumberInputController = TextEditingController();

  TextEditingController passwordInputController = TextEditingController();

  Rx<SignUpVersion2Model> signUpVersion2ModelObj = SignUpVersion2Model().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    fullNameInputController.dispose();
    emailInputController.dispose();
    phoneNumberInputController.dispose();
    passwordInputController.dispose();
  }
}
