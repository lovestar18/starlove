import '../../../core/app_export.dart';
import '../models/events_created_model.dart';

/// A controller class for the EventsCreatedPage.
///
/// This class manages the state of the EventsCreatedPage, including the
/// current eventsCreatedModelObj
class EventsCreatedController extends GetxController {
  EventsCreatedController(this.eventsCreatedModelObj);

  Rx<EventsCreatedModel> eventsCreatedModelObj;
}
