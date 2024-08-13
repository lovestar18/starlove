import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/edit_event_model.dart';

/// A controller class for the EditEventPage.
///
/// This class manages the state of the EditEventPage, including the
/// current editEventModelObj
class EditEventController extends GetxController {
  EditEventController(this.editEventModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<EditEventModel> editEventModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
