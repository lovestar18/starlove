import '../../../core/app_export.dart';
import '../models/events_added_model.dart';

/// A controller class for the EventsAddedPage.
///
/// This class manages the state of the EventsAddedPage, including the
/// current eventsAddedModelObj
class EventsAddedController extends GetxController {
  EventsAddedController(this.eventsAddedModelObj);

  Rx<EventsAddedModel> eventsAddedModelObj;
}
