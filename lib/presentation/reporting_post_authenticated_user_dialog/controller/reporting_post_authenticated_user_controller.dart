import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/reporting_post_authenticated_user_model.dart';

/// A controller class for the ReportingPostAuthenticatedUserDialog.
///
/// This class manages the state of the ReportingPostAuthenticatedUserDialog, including the
/// current reportingPostAuthenticatedUserModelObj
class ReportingPostAuthenticatedUserController extends GetxController {
  TextEditingController deletevalueoneController = TextEditingController();

  TextEditingController commentController = TextEditingController();

  Rx<ReportingPostAuthenticatedUserModel>
      reportingPostAuthenticatedUserModelObj =
      ReportingPostAuthenticatedUserModel().obs;

  @override
  void onClose() {
    super.onClose();
    deletevalueoneController.dispose();
    commentController.dispose();
  }
}
