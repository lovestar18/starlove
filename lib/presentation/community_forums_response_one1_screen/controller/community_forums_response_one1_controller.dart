import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/community_forums_response_one1_model.dart';

/// A controller class for the CommunityForumsResponseOne1Screen.
///
/// This class manages the state of the CommunityForumsResponseOne1Screen, including the
/// current communityForumsResponseOne1ModelObj
class CommunityForumsResponseOne1Controller extends GetxController {
  TextEditingController commentController = TextEditingController();

  TextEditingController comment1Controller = TextEditingController();

  Rx<CommunityForumsResponseOne1Model> communityForumsResponseOne1ModelObj =
      CommunityForumsResponseOne1Model().obs;

  @override
  void onClose() {
    super.onClose();
    commentController.dispose();
    comment1Controller.dispose();
  }
}
