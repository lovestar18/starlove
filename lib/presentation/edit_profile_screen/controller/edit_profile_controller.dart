import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/edit_profile_model.dart';

/// A controller class for the EditProfileScreen.
///
/// This class manages the state of the EditProfileScreen, including the
/// current editProfileModelObj
class EditProfileController extends GetxController {
  TextEditingController nameFieldController = TextEditingController();

  TextEditingController bioFieldController = TextEditingController();

  TextEditingController usernameFieldController = TextEditingController();

  TextEditingController tiktokLinkFieldController = TextEditingController();

  TextEditingController instagramLinkFieldController = TextEditingController();

  TextEditingController facebookLinkFieldController = TextEditingController();

  TextEditingController linkedinLinkFieldController = TextEditingController();

  TextEditingController twitterLinkFieldController = TextEditingController();

  Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameFieldController.dispose();
    bioFieldController.dispose();
    usernameFieldController.dispose();
    tiktokLinkFieldController.dispose();
    instagramLinkFieldController.dispose();
    facebookLinkFieldController.dispose();
    linkedinLinkFieldController.dispose();
    twitterLinkFieldController.dispose();
  }
}
