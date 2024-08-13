import '../../../core/app_export.dart';
import '../models/activity1_model.dart';

/// A controller class for the Activity1Screen.
///
/// This class manages the state of the Activity1Screen, including the
/// current activity1ModelObj
class Activity1Controller extends GetxController {
  Rx<Activity1Model> activity1ModelObj = Activity1Model().obs;
}
