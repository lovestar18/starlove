import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/edit_profile_model.dart';

/// A controller class for the EditProfileScreen.
///
/// This class manages the state of the EditProfileScreen, including the
/// current editProfileModelObj
class EditProfileController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController bioplaceholderController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController tiktoklinkController = TextEditingController();

  TextEditingController instagramlinkController = TextEditingController();

  Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    bioplaceholderController.dispose();
    userNameController.dispose();
    tiktoklinkController.dispose();
    instagramlinkController.dispose();
  }
}
