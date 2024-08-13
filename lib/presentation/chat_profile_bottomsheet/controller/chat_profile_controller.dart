import '../../../core/app_export.dart';
import '../models/chat_profile_model.dart';

/// A controller class for the ChatProfileBottomsheet.
///
/// This class manages the state of the ChatProfileBottomsheet, including the
/// current chatProfileModelObj
class ChatProfileController extends GetxController {
  Rx<ChatProfileModel> chatProfileModelObj = ChatProfileModel().obs;
}
