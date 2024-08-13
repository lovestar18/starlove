import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/write_in_group_options_model.dart';

/// A controller class for the WriteInGroupOptionsScreen.
///
/// This class manages the state of the WriteInGroupOptionsScreen, including the
/// current writeInGroupOptionsModelObj
class WriteInGroupOptionsController extends GetxController {
  TextEditingController whatshappeningController = TextEditingController();

  Rx<WriteInGroupOptionsModel> writeInGroupOptionsModelObj =
      WriteInGroupOptionsModel().obs;

  @override
  void onClose() {
    super.onClose();
    whatshappeningController.dispose();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.cameraPermissionTwoScreen,
    );
    Get.toNamed(
      AppRoutes.stickersScreen,
    );
  }
}
