import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/application_one_model.dart';

/// A controller class for the ApplicationOneBottomsheet.
///
/// This class manages the state of the ApplicationOneBottomsheet, including the
/// current applicationOneModelObj
class ApplicationOneController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController templeController = TextEditingController();

  TextEditingController favoriteDishController = TextEditingController();

  TextEditingController holidayTraditioController = TextEditingController();

  TextEditingController linkedinProfileController = TextEditingController();

  Rx<ApplicationOneModel> applicationOneModelObj = ApplicationOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    userNameController.dispose();
    templeController.dispose();
    favoriteDishController.dispose();
    holidayTraditioController.dispose();
    linkedinProfileController.dispose();
  }
}
