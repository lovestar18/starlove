import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/refer_a_friend_model.dart';

/// A controller class for the ReferAFriendScreen.
///
/// This class manages the state of the ReferAFriendScreen, including the
/// current referAFriendModelObj
class ReferAFriendController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController email1Controller = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  Rx<ReferAFriendModel> referAFriendModelObj = ReferAFriendModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    email1Controller.dispose();
    lastNameController.dispose();
  }
}
