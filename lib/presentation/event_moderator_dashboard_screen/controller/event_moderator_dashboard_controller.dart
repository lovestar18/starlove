import '../../../core/app_export.dart';
import '../models/event_moderator_dashboard_model.dart';

/// A controller class for the EventModeratorDashboardScreen.
///
/// This class manages the state of the EventModeratorDashboardScreen, including the
/// current eventModeratorDashboardModelObj
class EventModeratorDashboardController extends GetxController {
  Rx<EventModeratorDashboardModel> eventModeratorDashboardModelObj =
      EventModeratorDashboardModel().obs;
}
