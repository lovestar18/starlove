import '../../../core/app_export.dart';
import 'userprofilelist_item_model.dart';

/// This class defines the variables used in the [friends_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class FriendsModel {
  Rx<List<UserprofilelistItemModel>> userprofilelistItemList = Rx([
    UserprofilelistItemModel(
        memberName: "Member Name".obs, username: "Username".obs),
    UserprofilelistItemModel(
        memberName: "Member Name".obs, username: "Username".obs),
    UserprofilelistItemModel(
        memberName: "Member Name".obs, username: "Username".obs),
    UserprofilelistItemModel(
        memberName: "Member Name".obs, username: "Username".obs),
    UserprofilelistItemModel(
        memberName: "Member Name".obs, username: "Username".obs),
    UserprofilelistItemModel(
        memberName: "Member Name".obs, username: "Username".obs)
  ]);
}
