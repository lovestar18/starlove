import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/group_description_model.dart';

/// A controller class for the GroupDescriptionScreen.
///
/// This class manages the state of the GroupDescriptionScreen, including the
/// current groupDescriptionModelObj
class GroupDescriptionController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController groupdescriptioController = TextEditingController();

  Rx<GroupDescriptionModel> groupDescriptionModelObj =
      GroupDescriptionModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    groupdescriptioController.dispose();
  }
}
