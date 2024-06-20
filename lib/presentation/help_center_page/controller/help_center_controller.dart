import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/help_center_model.dart';

/// A controller class for the HelpCenterPage.
///
/// This class manages the state of the HelpCenterPage, including the
/// current helpCenterModelObj
class HelpCenterController extends GetxController {
  HelpCenterController(this.helpCenterModelObj);

  TextEditingController searchBarController = TextEditingController();

  Rx<HelpCenterModel> helpCenterModelObj;

  @override
  void onClose() {
    super.onClose();
    searchBarController.dispose();
  }
}
