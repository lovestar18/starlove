import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/profile_options_model.dart';

/// A controller class for the ProfileOptionsBottomsheet.
///
/// This class manages the state of the ProfileOptionsBottomsheet, including the
/// current profileOptionsModelObj
class ProfileOptionsController extends GetxController {
  TextEditingController commentController = TextEditingController();

  Rx<ProfileOptionsModel> profileOptionsModelObj = ProfileOptionsModel().obs;

  @override
  void onClose() {
    super.onClose();
    commentController.dispose();
  }
}
