import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/create_new_group_tab_container_model.dart';

/// A controller class for the CreateNewGroupTabContainerScreen.
///
/// This class manages the state of the CreateNewGroupTabContainerScreen, including the
/// current createNewGroupTabContainerModelObj
class CreateNewGroupTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController nameController = TextEditingController();

  TextEditingController groupdescriptioController = TextEditingController();

  Rx<CreateNewGroupTabContainerModel> createNewGroupTabContainerModelObj =
      CreateNewGroupTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));

  Rx<bool> isSelectedSwitch = false.obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    groupdescriptioController.dispose();
  }
}
