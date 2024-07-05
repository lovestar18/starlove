import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/group_group_chat_model.dart';

/// A controller class for the GroupGroupChatScreen.
///
/// This class manages the state of the GroupGroupChatScreen, including the
/// current groupGroupChatModelObj
class GroupGroupChatController extends GetxController {
  TextEditingController messageInputController = TextEditingController();

  Rx<GroupGroupChatModel> groupGroupChatModelObj = GroupGroupChatModel().obs;

  @override
  void onClose() {
    super.onClose();
    messageInputController.dispose();
  }
}
