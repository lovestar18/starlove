import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/report_user_model.dart';

/// A controller class for the ReportUserDialog.
///
/// This class manages the state of the ReportUserDialog, including the
/// current reportUserModelObj
class ReportUserController extends GetxController {
  TextEditingController blockvalueoneController = TextEditingController();

  TextEditingController reportvalueoneController = TextEditingController();

  Rx<ReportUserModel> reportUserModelObj = ReportUserModel().obs;

  @override
  void onClose() {
    super.onClose();
    blockvalueoneController.dispose();
    reportvalueoneController.dispose();
  }

  @override
  void onReady() {}
}
