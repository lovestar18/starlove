import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/help_contact_model.dart';

/// A controller class for the HelpContactPage.
///
/// This class manages the state of the HelpContactPage, including the
/// current helpContactModelObj
class HelpContactController extends GetxController {
  HelpContactController(this.helpContactModelObj);

  TextEditingController searchBarController = TextEditingController();

  Rx<HelpContactModel> helpContactModelObj;

  @override
  void onClose() {
    super.onClose();
    searchBarController.dispose();
  }
}
