import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/community_forums_response1_model.dart';

/// A controller class for the CommunityForumsResponse1Screen.
///
/// This class manages the state of the CommunityForumsResponse1Screen, including the
/// current communityForumsResponse1ModelObj
class CommunityForumsResponse1Controller extends GetxController {
  TextEditingController commentController = TextEditingController();

  TextEditingController commentInputController = TextEditingController();

  Rx<CommunityForumsResponse1Model> communityForumsResponse1ModelObj =
      CommunityForumsResponse1Model().obs;

  @override
  void onClose() {
    super.onClose();
    commentController.dispose();
    commentInputController.dispose();
  }
}
