import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/help_contact_model.dart';

/// A controller class for the HelpContactScreen.
///
/// This class manages the state of the HelpContactScreen, including the
/// current helpContactModelObj
class HelpContactController extends GetxController {
  TextEditingController fullNameFieldController = TextEditingController();

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController commentsFieldController = TextEditingController();

  Rx<HelpContactModel> helpContactModelObj = HelpContactModel().obs;

  @override
  void onClose() {
    super.onClose();
    fullNameFieldController.dispose();
    emailFieldController.dispose();
    commentsFieldController.dispose();
  }
}
