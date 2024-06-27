import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/community_forums_response_model.dart';

/// A controller class for the CommunityForumsResponsePage.
///
/// This class manages the state of the CommunityForumsResponsePage, including the
/// current communityForumsResponseModelObj
class CommunityForumsResponseController extends GetxController {
  CommunityForumsResponseController(this.communityForumsResponseModelObj);

  TextEditingController commentController = TextEditingController();

  Rx<CommunityForumsResponseModel> communityForumsResponseModelObj;

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
