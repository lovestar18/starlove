import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/groupsdashboard_container_tab_container_model.dart';

/// A controller class for the GroupsdashboardContainerTabContainerScreen.
///
/// This class manages the state of the GroupsdashboardContainerTabContainerScreen, including the
/// current groupsdashboardContainerTabContainerModelObj
class GroupsdashboardContainerTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  Rx<GroupsdashboardContainerTabContainerModel>
      groupsdashboardContainerTabContainerModelObj =
      GroupsdashboardContainerTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
