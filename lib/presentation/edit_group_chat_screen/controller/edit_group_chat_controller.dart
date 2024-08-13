import '../../../core/app_export.dart';
import '../models/edit_group_chat_model.dart';

/// A controller class for the EditGroupChatScreen.
///
/// This class manages the state of the EditGroupChatScreen, including the
/// current editGroupChatModelObj
class EditGroupChatController extends GetxController {
  Rx<EditGroupChatModel> editGroupChatModelObj = EditGroupChatModel().obs;
}
