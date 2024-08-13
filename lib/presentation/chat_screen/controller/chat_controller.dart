import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/chat_model.dart';

/// A controller class for the ChatScreen.
///
/// This class manages the state of the ChatScreen, including the
/// current chatModelObj
class ChatController extends GetxController {
  TextEditingController messageInputSectionController = TextEditingController();

  Rx<ChatModel> chatModelObj = ChatModel().obs;

  @override
  void onClose() {
    super.onClose();
    messageInputSectionController.dispose();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.stickersScreen,
    );
  }
}
