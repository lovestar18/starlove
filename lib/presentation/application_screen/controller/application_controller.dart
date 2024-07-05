import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/application_model.dart';

/// A controller class for the ApplicationScreen.
///
/// This class manages the state of the ApplicationScreen, including the
/// current applicationModelObj
class ApplicationController extends GetxController {
  TextEditingController fullNameInputController = TextEditingController();

  TextEditingController usernameInputController = TextEditingController();

  TextEditingController templeInputController = TextEditingController();

  TextEditingController favoriteDishInputController = TextEditingController();

  TextEditingController holidayTraditionInputController =
      TextEditingController();

  TextEditingController linkedinInputController = TextEditingController();

  Rx<ApplicationModel> applicationModelObj = ApplicationModel().obs;

  @override
  void onClose() {
    super.onClose();
    fullNameInputController.dispose();
    usernameInputController.dispose();
    templeInputController.dispose();
    favoriteDishInputController.dispose();
    holidayTraditionInputController.dispose();
    linkedinInputController.dispose();
  }
}
