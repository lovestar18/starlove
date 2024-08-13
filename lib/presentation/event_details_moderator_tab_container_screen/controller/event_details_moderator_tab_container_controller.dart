import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/event_details_moderator_tab_container_model.dart';

/// A controller class for the EventDetailsModeratorTabContainerScreen.
///
/// This class manages the state of the EventDetailsModeratorTabContainerScreen, including the
/// current eventDetailsModeratorTabContainerModelObj
class EventDetailsModeratorTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController postInputSectionController = TextEditingController();

  Rx<EventDetailsModeratorTabContainerModel>
      eventDetailsModeratorTabContainerModelObj =
      EventDetailsModeratorTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));

  @override
  void onClose() {
    super.onClose();
    postInputSectionController.dispose();
  }
}
