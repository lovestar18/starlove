import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/create_new_group_model.dart';

/// A controller class for the CreateNewGroupScreen.
///
/// This class manages the state of the CreateNewGroupScreen, including the
/// current createNewGroupModelObj
class CreateNewGroupController extends GetxController {
  TextEditingController groupNameInputController = TextEditingController();

  TextEditingController descriptionInputController = TextEditingController();

  Rx<CreateNewGroupModel> createNewGroupModelObj = CreateNewGroupModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;

  @override
  void onClose() {
    super.onClose();
    groupNameInputController.dispose();
    descriptionInputController.dispose();
  }
}
