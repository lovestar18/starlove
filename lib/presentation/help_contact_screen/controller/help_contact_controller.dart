import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/help_contact_model.dart';

/// A controller class for the HelpContactScreen.
///
/// This class manages the state of the HelpContactScreen, including the
/// current helpContactModelObj
class HelpContactController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController commentController = TextEditingController();

  Rx<HelpContactModel> helpContactModelObj = HelpContactModel().obs;

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    emailController.dispose();
    commentController.dispose();
  }
}
