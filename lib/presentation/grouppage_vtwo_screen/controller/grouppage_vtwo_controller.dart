import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/grouppage_vtwo_model.dart';

/// A controller class for the GrouppageVtwoScreen.
///
/// This class manages the state of the GrouppageVtwoScreen, including the
/// current grouppageVtwoModelObj
class GrouppageVtwoController extends GetxController {
  TextEditingController postInputController = TextEditingController();

  Rx<GrouppageVtwoModel> grouppageVtwoModelObj = GrouppageVtwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    postInputController.dispose();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.communityForumsHome1Page,
    );
    Get.toNamed(
      AppRoutes.stickersScreen,
    );
  }
}
