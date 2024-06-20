import '../../../core/app_export.dart';
import 'userprofileslist_item_model.dart';

/// This class defines the variables used in the [moderate_members_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ModerateMembersModel {
  Rx<List<UserprofileslistItemModel>> userprofileslistItemList = Rx([
    UserprofileslistItemModel(
        username: "Name".obs,
        handle: "@handle".obs,
        button: "VIEW".obs,
        buttonOne: "Remove".obs),
    UserprofileslistItemModel(
        username: "Name".obs,
        handle: "@handle".obs,
        button: "VIEW".obs,
        buttonOne: "Remove".obs),
    UserprofileslistItemModel(),
    UserprofileslistItemModel(),
    UserprofileslistItemModel(),
    UserprofileslistItemModel(),
    UserprofileslistItemModel()
  ]);
}
