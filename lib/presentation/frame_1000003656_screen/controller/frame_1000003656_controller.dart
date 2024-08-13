import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/frame_1000003656_model.dart';

/// A controller class for the Frame1000003656Screen.
///
/// This class manages the state of the Frame1000003656Screen, including the
/// current frame1000003656ModelObj
class Frame1000003656Controller extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<Frame1000003656Model> frame1000003656ModelObj = Frame1000003656Model().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
