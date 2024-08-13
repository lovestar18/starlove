import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/add_comment_write_model.dart';

/// A controller class for the AddCommentWriteScreen.
///
/// This class manages the state of the AddCommentWriteScreen, including the
/// current addCommentWriteModelObj
class AddCommentWriteController extends GetxController {
  TextEditingController commentInputController = TextEditingController();

  Rx<AddCommentWriteModel> addCommentWriteModelObj = AddCommentWriteModel().obs;

  @override
  void onClose() {
    super.onClose();
    commentInputController.dispose();
  }
}
