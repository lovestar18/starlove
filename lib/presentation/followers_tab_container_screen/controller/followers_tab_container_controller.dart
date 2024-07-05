import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/followers_tab_container_model.dart';

/// A controller class for the FollowersTabContainerScreen.
///
/// This class manages the state of the FollowersTabContainerScreen, including the
/// current followersTabContainerModelObj
class FollowersTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<FollowersTabContainerModel> followersTabContainerModelObj =
      FollowersTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
