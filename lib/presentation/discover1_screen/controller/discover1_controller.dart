import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/discover1_model.dart';

/// A controller class for the Discover1Screen.
///
/// This class manages the state of the Discover1Screen, including the
/// current discover1ModelObj
class Discover1Controller extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<Discover1Model> discover1ModelObj = Discover1Model().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
