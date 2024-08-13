import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/event_details_public_model.dart';

/// A controller class for the EventDetailsPublicScreen.
///
/// This class manages the state of the EventDetailsPublicScreen, including the
/// current eventDetailsPublicModelObj
class EventDetailsPublicController extends GetxController {
  TextEditingController whatshappeningvController = TextEditingController();

  Rx<EventDetailsPublicModel> eventDetailsPublicModelObj =
      EventDetailsPublicModel().obs;

  @override
  void onClose() {
    super.onClose();
    whatshappeningvController.dispose();
  }
}
