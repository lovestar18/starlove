import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [add_to_chat_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AddToChatModel {
  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        memberName: "Member Name".obs, username: "Username".obs),
    UserprofileItemModel(
        memberName: "Member Name".obs, username: "Username".obs),
    UserprofileItemModel(
        memberName: "Member Name".obs, username: "Username".obs),
    UserprofileItemModel(
        memberName: "Member Name".obs, username: "Username".obs),
    UserprofileItemModel()
  ]);
}
