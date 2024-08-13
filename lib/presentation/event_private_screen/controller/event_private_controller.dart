import '../../../core/app_export.dart';
import '../models/event_private_model.dart';

/// A controller class for the EventPrivateScreen.
///
/// This class manages the state of the EventPrivateScreen, including the
/// current eventPrivateModelObj
class EventPrivateController extends GetxController {
  Rx<EventPrivateModel> eventPrivateModelObj = EventPrivateModel().obs;
}
