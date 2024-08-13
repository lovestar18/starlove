import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/write_in_event_option_model.dart';

/// A controller class for the WriteInEventOptionScreen.
///
/// This class manages the state of the WriteInEventOptionScreen, including the
/// current writeInEventOptionModelObj
class WriteInEventOptionController extends GetxController {
  TextEditingController whatshappeningController = TextEditingController();

  Rx<WriteInEventOptionModel> writeInEventOptionModelObj =
      WriteInEventOptionModel().obs;

  @override
  void onClose() {
    super.onClose();
    whatshappeningController.dispose();
  }
}
