import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/moderate_members_model.dart';

/// A controller class for the ModerateMembersScreen.
///
/// This class manages the state of the ModerateMembersScreen, including the
/// current moderateMembersModelObj
class ModerateMembersController extends GetxController {
  TextEditingController searchBarController = TextEditingController();

  Rx<ModerateMembersModel> moderateMembersModelObj = ModerateMembersModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchBarController.dispose();
  }
}
