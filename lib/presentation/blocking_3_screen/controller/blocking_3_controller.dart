import '../../../core/app_export.dart';
import '../models/blocking_3_model.dart';

/// A controller class for the Blocking3Screen.
///
/// This class manages the state of the Blocking3Screen, including the
/// current blocking3ModelObj
class Blocking3Controller extends GetxController {
  Rx<Blocking3Model> blocking3ModelObj = Blocking3Model().obs;
}
