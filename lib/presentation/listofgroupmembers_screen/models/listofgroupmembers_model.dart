import '../../../core/app_export.dart';
import 'memberslistsection_item_model.dart';

/// This class defines the variables used in the [listofgroupmembers_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ListofgroupmembersModel {
  Rx<List<MemberslistsectionItemModel>> memberslistsectionItemList = Rx([
    MemberslistsectionItemModel(
        memberName: "Member Name".obs,
        username: "Username".obs,
        moderator: "Moderator".obs),
    MemberslistsectionItemModel(),
    MemberslistsectionItemModel(),
    MemberslistsectionItemModel(),
    MemberslistsectionItemModel(),
    MemberslistsectionItemModel(),
    MemberslistsectionItemModel(),
    MemberslistsectionItemModel(),
    MemberslistsectionItemModel(),
    MemberslistsectionItemModel(),
    MemberslistsectionItemModel()
  ]);
}
