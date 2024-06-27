import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/home_recent_chats_tab_container_model.dart';

/// A controller class for the HomeRecentChatsTabContainerScreen.
///
/// This class manages the state of the HomeRecentChatsTabContainerScreen, including the
/// current homeRecentChatsTabContainerModelObj
class HomeRecentChatsTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<HomeRecentChatsTabContainerModel> homeRecentChatsTabContainerModelObj =
      HomeRecentChatsTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));

  @override
  void onReady() {}
}
