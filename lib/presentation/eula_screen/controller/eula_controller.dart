import '../../../core/app_export.dart';
import '../models/eula_model.dart';

/// A controller class for the EulaScreen.
///
/// This class manages the state of the EulaScreen, including the
/// current eulaModelObj
class EulaController extends GetxController {
  Rx<EulaModel> eulaModelObj = EulaModel().obs;
}
