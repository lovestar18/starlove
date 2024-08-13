import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/discover_groups_model.dart';

/// A controller class for the DiscoverGroupsScreen.
///
/// This class manages the state of the DiscoverGroupsScreen, including the
/// current discoverGroupsModelObj
class DiscoverGroupsController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<DiscoverGroupsModel> discoverGroupsModelObj = DiscoverGroupsModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
