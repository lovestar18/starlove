import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/edit_group_details_model.dart';

/// A controller class for the EditGroupDetailsScreen.
///
/// This class manages the state of the EditGroupDetailsScreen, including the
/// current editGroupDetailsModelObj
class EditGroupDetailsController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController yournamegmailcoController = TextEditingController();

  Rx<EditGroupDetailsModel> editGroupDetailsModelObj =
      EditGroupDetailsModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    yournamegmailcoController.dispose();
  }
}
