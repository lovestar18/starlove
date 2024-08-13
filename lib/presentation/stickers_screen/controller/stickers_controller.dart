import '../../../core/app_export.dart';
import '../models/stickers_model.dart';

/// A controller class for the StickersScreen.
///
/// This class manages the state of the StickersScreen, including the
/// current stickersModelObj
class StickersController extends GetxController {
  Rx<StickersModel> stickersModelObj = StickersModel().obs;
}
