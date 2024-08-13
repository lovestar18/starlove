import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/friends_tab_container_model.dart';

/// A controller class for the FriendsTabContainerScreen.
///
/// This class manages the state of the FriendsTabContainerScreen, including the
/// current friendsTabContainerModelObj
class FriendsTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  Rx<FriendsTabContainerModel> friendsTabContainerModelObj =
      FriendsTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
