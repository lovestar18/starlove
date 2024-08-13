import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/profile_options_one_model.dart';

/// A controller class for the ProfileOptionsOneBottomsheet.
///
/// This class manages the state of the ProfileOptionsOneBottomsheet, including the
/// current profileOptionsOneModelObj
class ProfileOptionsOneController extends GetxController {
  TextEditingController unfollowuservalController = TextEditingController();

  TextEditingController blockuservalueController = TextEditingController();

  Rx<ProfileOptionsOneModel> profileOptionsOneModelObj =
      ProfileOptionsOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    unfollowuservalController.dispose();
    blockuservalueController.dispose();
  }

  @override
  void onReady() {}
}
