import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/write_to_event_model.dart';

/// A controller class for the WriteToEventScreen.
///
/// This class manages the state of the WriteToEventScreen, including the
/// current writeToEventModelObj
class WriteToEventController extends GetxController {
  TextEditingController whatshappeningController = TextEditingController();

  Rx<WriteToEventModel> writeToEventModelObj = WriteToEventModel().obs;

  @override
  void onClose() {
    super.onClose();
    whatshappeningController.dispose();
  }
}
