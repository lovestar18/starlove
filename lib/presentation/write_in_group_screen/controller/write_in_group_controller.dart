import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/write_in_group_model.dart';

/// A controller class for the WriteInGroupScreen.
///
/// This class manages the state of the WriteInGroupScreen, including the
/// current writeInGroupModelObj
class WriteInGroupController extends GetxController {
  TextEditingController whatshappeningController = TextEditingController();

  Rx<WriteInGroupModel> writeInGroupModelObj = WriteInGroupModel().obs;

  @override
  void onClose() {
    super.onClose();
    whatshappeningController.dispose();
  }
}
