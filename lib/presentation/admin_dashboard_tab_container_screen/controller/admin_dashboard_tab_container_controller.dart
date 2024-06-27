import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/admin_dashboard_tab_container_model.dart';

/// A controller class for the AdminDashboardTabContainerScreen.
///
/// This class manages the state of the AdminDashboardTabContainerScreen, including the
/// current adminDashboardTabContainerModelObj
class AdminDashboardTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<AdminDashboardTabContainerModel> adminDashboardTabContainerModelObj =
      AdminDashboardTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
