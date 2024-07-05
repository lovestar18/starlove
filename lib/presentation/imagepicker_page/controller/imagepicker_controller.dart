import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/imagepicker_model.dart';

/// A controller class for the ImagepickerPage.
///
/// This class manages the state of the ImagepickerPage, including the
/// current imagepickerModelObj
class ImagepickerController extends GetxController {
  ImagepickerController(this.imagepickerModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<ImagepickerModel> imagepickerModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
