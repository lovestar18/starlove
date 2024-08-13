import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/create_new_group_model.dart';

/// A controller class for the CreateNewGroupPage.
///
/// This class manages the state of the CreateNewGroupPage, including the
/// current createNewGroupModelObj
class CreateNewGroupController extends GetxController {
  CreateNewGroupController(this.createNewGroupModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<CreateNewGroupModel> createNewGroupModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
