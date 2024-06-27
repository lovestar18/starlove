import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/add_to_chat_model.dart';

/// A controller class for the AddToChatScreen.
///
/// This class manages the state of the AddToChatScreen, including the
/// current addToChatModelObj
class AddToChatController extends GetxController {
  TextEditingController searchViewController = TextEditingController();

  Rx<AddToChatModel> addToChatModelObj = AddToChatModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchViewController.dispose();
  }
}
