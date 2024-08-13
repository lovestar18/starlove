import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/application_username_error_model.dart';

/// A controller class for the ApplicationUsernameErrorBottomsheet.
///
/// This class manages the state of the ApplicationUsernameErrorBottomsheet, including the
/// current applicationUsernameErrorModelObj
class ApplicationUsernameErrorController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController whatTempleAreYoController = TextEditingController();

  TextEditingController favoriteJewishDController = TextEditingController();

  TextEditingController bestJewishHolidController = TextEditingController();

  Rx<ApplicationUsernameErrorModel> applicationUsernameErrorModelObj =
      ApplicationUsernameErrorModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    userNameController.dispose();
    whatTempleAreYoController.dispose();
    favoriteJewishDController.dispose();
    bestJewishHolidController.dispose();
  }
}
