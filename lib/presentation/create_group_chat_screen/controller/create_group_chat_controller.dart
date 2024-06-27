import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/create_group_chat_model.dart';

/// A controller class for the CreateGroupChatScreen.
///
/// This class manages the state of the CreateGroupChatScreen, including the
/// current createGroupChatModelObj
class CreateGroupChatController extends GetxController {
  TextEditingController groupNameInputController = TextEditingController();

  TextEditingController groupDescriptionInputController =
      TextEditingController();

  Rx<CreateGroupChatModel> createGroupChatModelObj = CreateGroupChatModel().obs;

  @override
  void onClose() {
    super.onClose();
    groupNameInputController.dispose();
    groupDescriptionInputController.dispose();
  }
}
