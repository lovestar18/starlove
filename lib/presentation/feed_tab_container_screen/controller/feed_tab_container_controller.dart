import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/feed_tab_container_model.dart';

/// A controller class for the FeedTabContainerScreen.
///
/// This class manages the state of the FeedTabContainerScreen, including the
/// current feedTabContainerModelObj
class FeedTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController avatarController = TextEditingController();

  Rx<FeedTabContainerModel> feedTabContainerModelObj =
      FeedTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));

  @override
  void onClose() {
    super.onClose();
    avatarController.dispose();
  }
}
