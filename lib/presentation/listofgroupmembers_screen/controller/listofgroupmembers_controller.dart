import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listofgroupmembers_model.dart';

/// A controller class for the ListofgroupmembersScreen.
///
/// This class manages the state of the ListofgroupmembersScreen, including the
/// current listofgroupmembersModelObj
class ListofgroupmembersController extends GetxController {
  TextEditingController searchBarController = TextEditingController();

  Rx<ListofgroupmembersModel> listofgroupmembersModelObj =
      ListofgroupmembersModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchBarController.dispose();
  }

  @override
  void onReady() {}
}
