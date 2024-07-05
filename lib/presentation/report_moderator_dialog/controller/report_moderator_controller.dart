import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/report_moderator_model.dart';

/// A controller class for the ReportModeratorDialog.
///
/// This class manages the state of the ReportModeratorDialog, including the
/// current reportModeratorModelObj
class ReportModeratorController extends GetxController {
  TextEditingController deleteValueController = TextEditingController();

  TextEditingController reportValueController = TextEditingController();

  Rx<ReportModeratorModel> reportModeratorModelObj = ReportModeratorModel().obs;

  @override
  void onClose() {
    super.onClose();
    deleteValueController.dispose();
    reportValueController.dispose();
  }
}
