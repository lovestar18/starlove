import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/discover_events_model.dart';

/// A controller class for the DiscoverEventsScreen.
///
/// This class manages the state of the DiscoverEventsScreen, including the
/// current discoverEventsModelObj
class DiscoverEventsController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<DiscoverEventsModel> discoverEventsModelObj = DiscoverEventsModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
