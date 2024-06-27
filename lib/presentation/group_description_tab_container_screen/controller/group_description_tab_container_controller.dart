import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/group_description_tab_container_model.dart';

/// A controller class for the GroupDescriptionTabContainerScreen.
///
/// This class manages the state of the GroupDescriptionTabContainerScreen, including the
/// current groupDescriptionTabContainerModelObj
class GroupDescriptionTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<GroupDescriptionTabContainerModel> groupDescriptionTabContainerModelObj =
      GroupDescriptionTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 5));

  Rx<bool> isSelectedSwitch = false.obs;
}
