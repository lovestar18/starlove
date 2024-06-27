import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/following_tab_container_model.dart';

/// A controller class for the FollowingTabContainerScreen.
///
/// This class manages the state of the FollowingTabContainerScreen, including the
/// current followingTabContainerModelObj
class FollowingTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<FollowingTabContainerModel> followingTabContainerModelObj =
      FollowingTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
