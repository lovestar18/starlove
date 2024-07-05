import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/story_model.dart';

/// A controller class for the StoryScreen.
///
/// This class manages the state of the StoryScreen, including the
/// current storyModelObj
class StoryController extends GetxController {
  TextEditingController messageController = TextEditingController();

  Rx<StoryModel> storyModelObj = StoryModel().obs;

  @override
  void onClose() {
    super.onClose();
    messageController.dispose();
  }
}
