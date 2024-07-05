import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/group_chat_model.dart';

/// A controller class for the GroupChatScreen.
///
/// This class manages the state of the GroupChatScreen, including the
/// current groupChatModelObj
class GroupChatController extends GetxController {
  TextEditingController messageInputController = TextEditingController();

  Rx<GroupChatModel> groupChatModelObj = GroupChatModel().obs;

  @override
  void onClose() {
    super.onClose();
    messageInputController.dispose();
  }
}
