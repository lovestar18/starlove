import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listofgroupmembers_model.dart';

/// A controller class for the ListofgroupmembersScreen.
///
/// This class manages the state of the ListofgroupmembersScreen, including the
/// current listofgroupmembersModelObj
class ListofgroupmembersController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<ListofgroupmembersModel> listofgroupmembersModelObj =
      ListofgroupmembersModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
