import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/sending_love_model.dart';

/// A controller class for the SendingLoveBottomsheet.
///
/// This class manages the state of the SendingLoveBottomsheet, including the
/// current sendingLoveModelObj
class SendingLoveController extends GetxController {
  TextEditingController shareThoughtsMeController = TextEditingController();

  Rx<SendingLoveModel> sendingLoveModelObj = SendingLoveModel().obs;

  @override
  void onClose() {
    super.onClose();
    shareThoughtsMeController.dispose();
  }
}
