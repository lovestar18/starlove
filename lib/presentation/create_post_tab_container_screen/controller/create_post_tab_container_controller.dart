import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/create_post_tab_container_model.dart';

/// A controller class for the CreatePostTabContainerScreen.
///
/// This class manages the state of the CreatePostTabContainerScreen, including the
/// current createPostTabContainerModelObj
class CreatePostTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController whatshappeningController = TextEditingController();

  Rx<CreatePostTabContainerModel> createPostTabContainerModelObj =
      CreatePostTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));

  @override
  void onClose() {
    super.onClose();
    whatshappeningController.dispose();
  }
}
