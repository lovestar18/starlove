import '../../../core/app_export.dart';
import 'userprofileslist2_item_model.dart';

/// This class defines the variables used in the [event_members_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class EventMembersModel {
  Rx<List<Userprofileslist2ItemModel>> userprofileslist2ItemList = Rx([
    Userprofileslist2ItemModel(
        memberName: "Member Name".obs,
        username: "Username".obs,
        moderator: "Moderator".obs),
    Userprofileslist2ItemModel(),
    Userprofileslist2ItemModel(),
    Userprofileslist2ItemModel(),
    Userprofileslist2ItemModel(),
    Userprofileslist2ItemModel(),
    Userprofileslist2ItemModel(),
    Userprofileslist2ItemModel(),
    Userprofileslist2ItemModel(),
    Userprofileslist2ItemModel()
  ]);
}
