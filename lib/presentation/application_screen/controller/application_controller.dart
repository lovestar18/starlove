import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/application_model.dart';

/// A controller class for the ApplicationScreen.
///
/// This class manages the state of the ApplicationScreen, including the
/// current applicationModelObj
class ApplicationController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController whattempleareyoController = TextEditingController();

  TextEditingController yournamegmailcoController = TextEditingController();

  TextEditingController yournamegmailco1Controller = TextEditingController();

  TextEditingController yournamegmailco2Controller = TextEditingController();

  Rx<ApplicationModel> applicationModelObj = ApplicationModel().obs;

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    userNameController.dispose();
    whattempleareyoController.dispose();
    yournamegmailcoController.dispose();
    yournamegmailco1Controller.dispose();
    yournamegmailco2Controller.dispose();
  }
}
