import '../../../core/app_export.dart';
import '../models/user_profile1_model.dart';

/// A controller class for the UserProfile1Screen.
///
/// This class manages the state of the UserProfile1Screen, including the
/// current userProfile1ModelObj
class UserProfile1Controller extends GetxController {
  Rx<UserProfile1Model> userProfile1ModelObj = UserProfile1Model().obs;
}
