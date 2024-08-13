import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../application_one_bottomsheet/application_one_bottomsheet.dart';
import '../../application_one_bottomsheet/controller/application_one_controller.dart';
import '../models/get_started_model.dart';

/// A controller class for the GetStartedBottomsheet.
///
/// This class manages the state of the GetStartedBottomsheet, including the
/// current getStartedModelObj
class GetStartedController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<GetStartedModel> getStartedModelObj = GetStartedModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.bottomSheet(
        ApplicationOneBottomsheet(
          Get.put(
            ApplicationOneController(),
          ),
        ),
        isScrollControlled: true,
      );
    });
  }
}
