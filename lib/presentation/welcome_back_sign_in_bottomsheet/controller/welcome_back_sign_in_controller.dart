import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../get_started_bottomsheet/controller/get_started_controller.dart';
import '../../get_started_bottomsheet/get_started_bottomsheet.dart';
import '../models/welcome_back_sign_in_model.dart';

/// A controller class for the WelcomeBackSignInBottomsheet.
///
/// This class manages the state of the WelcomeBackSignInBottomsheet, including the
/// current welcomeBackSignInModelObj
class WelcomeBackSignInController extends GetxController {
  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  Rx<WelcomeBackSignInModel> welcomeBackSignInModelObj =
      WelcomeBackSignInModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> rememberMe = false.obs;

  @override
  void onClose() {
    super.onClose();
    emailFieldController.dispose();
    passwordFieldController.dispose();
  }

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.bottomSheet(
        GetStartedBottomsheet(
          Get.put(
            GetStartedController(),
          ),
        ),
        isScrollControlled: true,
      );
    });
  }
}
