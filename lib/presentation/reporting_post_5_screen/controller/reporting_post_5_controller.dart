import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/reporting_post_5_model.dart';

/// A controller class for the ReportingPost5Screen.
///
/// This class manages the state of the ReportingPost5Screen, including the
/// current reportingPost5ModelObj
class ReportingPost5Controller extends GetxController {
  TextEditingController additionaldetaiController = TextEditingController();

  Rx<ReportingPost5Model> reportingPost5ModelObj = ReportingPost5Model().obs;

  @override
  void onClose() {
    super.onClose();
    additionaldetaiController.dispose();
  }
}
