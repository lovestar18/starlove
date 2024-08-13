import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/event_members_model.dart';

/// A controller class for the EventMembersScreen.
///
/// This class manages the state of the EventMembersScreen, including the
/// current eventMembersModelObj
class EventMembersController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<EventMembersModel> eventMembersModelObj = EventMembersModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
