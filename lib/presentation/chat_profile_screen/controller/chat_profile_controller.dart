import '../../../core/app_export.dart';
import '../models/chat_profile_model.dart';

/// A controller class for the ChatProfileScreen.
///
/// This class manages the state of the ChatProfileScreen, including the
/// current chatProfileModelObj
class ChatProfileController extends GetxController {
  Rx<ChatProfileModel> chatProfileModelObj = ChatProfileModel().obs;
}
