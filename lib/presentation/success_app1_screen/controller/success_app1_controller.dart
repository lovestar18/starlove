import '../../../core/app_export.dart';
import '../models/success_app1_model.dart';

/// A controller class for the SuccessApp1Screen.
///
/// This class manages the state of the SuccessApp1Screen, including the
/// current successApp1ModelObj
class SuccessApp1Controller extends GetxController {
  Rx<SuccessApp1Model> successApp1ModelObj = SuccessApp1Model().obs;
}
