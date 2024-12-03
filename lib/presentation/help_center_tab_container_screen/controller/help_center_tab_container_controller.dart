import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/help_center_tab_container_model.dart';

/// A controller class for the HelpCenterTabContainerScreen.
///
/// This class manages the state of the HelpCenterTabContainerScreen, including the
/// current helpCenterTabContainerModelObj
class HelpCenterTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<HelpCenterTabContainerModel> helpCenterTabContainerModelObj =
      HelpCenterTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
