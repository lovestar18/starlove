import '../../../core/app_export.dart';
import '../models/profile_model.dart';

/// A controller class for the ProfileBottomsheet.
///
/// This class manages the state of the ProfileBottomsheet, including the
/// current profileModelObj
class ProfileController extends GetxController {
  Rx<ProfileModel> profileModelObj = ProfileModel().obs;
}
