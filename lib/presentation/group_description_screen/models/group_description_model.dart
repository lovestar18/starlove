import '../../../core/app_export.dart';
import 'memberprofile_item_model.dart';

/// This class defines the variables used in the [group_description_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class GroupDescriptionModel {
  Rx<List<MemberprofileItemModel>> memberprofileItemList = Rx([
    MemberprofileItemModel(
        memberName: "Member Name".obs, username: "Username".obs),
    MemberprofileItemModel(
        memberName: "Member Name".obs, username: "Username".obs),
    MemberprofileItemModel(
        memberName: "Member Name".obs, username: "Username".obs),
    MemberprofileItemModel(),
    MemberprofileItemModel(),
    MemberprofileItemModel(),
    MemberprofileItemModel()
  ]);
}
