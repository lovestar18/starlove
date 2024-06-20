import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/write_in_communty_model.dart';

/// A controller class for the WriteInCommuntyScreen.
///
/// This class manages the state of the WriteInCommuntyScreen, including the
/// current writeInCommuntyModelObj
class WriteInCommuntyController extends GetxController {
  TextEditingController yournamegmailcoController = TextEditingController();

  TextEditingController yournamegmailco1Controller = TextEditingController();

  Rx<WriteInCommuntyModel> writeInCommuntyModelObj = WriteInCommuntyModel().obs;

  @override
  void onClose() {
    super.onClose();
    yournamegmailcoController.dispose();
    yournamegmailco1Controller.dispose();
  }
}
