import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/community_forums_response_model.dart';

/// A controller class for the CommunityForumsResponseScreen.
///
/// This class manages the state of the CommunityForumsResponseScreen, including the
/// current communityForumsResponseModelObj
class CommunityForumsResponseController extends GetxController {
  TextEditingController commentController = TextEditingController();

  Rx<CommunityForumsResponseModel> communityForumsResponseModelObj =
      CommunityForumsResponseModel().obs;

  @override
  void onClose() {
    super.onClose();
    commentController.dispose();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.createNewGroupScreen,
    );
  }
}
