import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/new_chat_model.dart';

/// A controller class for the NewChatScreen.
///
/// This class manages the state of the NewChatScreen, including the
/// current newChatModelObj
class NewChatController extends GetxController {
  TextEditingController searchBarController = TextEditingController();

  Rx<NewChatModel> newChatModelObj = NewChatModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchBarController.dispose();
  }
}
