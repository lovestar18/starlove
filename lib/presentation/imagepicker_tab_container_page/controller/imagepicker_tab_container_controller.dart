import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/imagepicker_tab_container_model.dart';

/// A controller class for the ImagepickerTabContainerPage.
///
/// This class manages the state of the ImagepickerTabContainerPage, including the
/// current imagepickerTabContainerModelObj
class ImagepickerTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  ImagepickerTabContainerController(this.imagepickerTabContainerModelObj);

  Rx<ImagepickerTabContainerModel> imagepickerTabContainerModelObj;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
