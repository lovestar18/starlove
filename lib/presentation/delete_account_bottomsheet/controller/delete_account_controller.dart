import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/delete_account_model.dart';

/// A controller class for the DeleteAccountBottomsheet.
///
/// This class manages the state of the DeleteAccountBottomsheet, including the
/// current deleteAccountModelObj
class DeleteAccountController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  Rx<DeleteAccountModel> deleteAccountModelObj = DeleteAccountModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
  }

  @override
  void onReady() {}
}
