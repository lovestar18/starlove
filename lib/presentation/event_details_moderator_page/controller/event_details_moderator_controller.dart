import '../../../core/app_export.dart';
import '../models/event_details_moderator_model.dart';

/// A controller class for the EventDetailsModeratorPage.
///
/// This class manages the state of the EventDetailsModeratorPage, including the
/// current eventDetailsModeratorModelObj
class EventDetailsModeratorController extends GetxController {
  EventDetailsModeratorController(this.eventDetailsModeratorModelObj);

  Rx<EventDetailsModeratorModel> eventDetailsModeratorModelObj;
}
