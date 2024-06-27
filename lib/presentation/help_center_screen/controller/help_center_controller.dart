import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/help_center_model.dart';

/// A controller class for the HelpCenterScreen.
///
/// This class manages the state of the HelpCenterScreen, including the
/// current helpCenterModelObj
class HelpCenterController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<HelpCenterModel> helpCenterModelObj = HelpCenterModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
