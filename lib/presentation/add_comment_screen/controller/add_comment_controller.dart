import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/add_comment_model.dart';

/// A controller class for the AddCommentScreen.
///
/// This class manages the state of the AddCommentScreen, including the
/// current addCommentModelObj
class AddCommentController extends GetxController {
  TextEditingController messageInputController = TextEditingController();

  Rx<AddCommentModel> addCommentModelObj = AddCommentModel().obs;

  @override
  void onClose() {
    super.onClose();
    messageInputController.dispose();
  }
}
