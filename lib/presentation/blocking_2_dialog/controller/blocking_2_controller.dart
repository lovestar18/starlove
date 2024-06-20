import '../../../core/app_export.dart';
import '../models/blocking_2_model.dart';

/// A controller class for the Blocking2Dialog.
///
/// This class manages the state of the Blocking2Dialog, including the
/// current blocking2ModelObj
class Blocking2Controller extends GetxController {
  Rx<Blocking2Model> blocking2ModelObj = Blocking2Model().obs;
}
