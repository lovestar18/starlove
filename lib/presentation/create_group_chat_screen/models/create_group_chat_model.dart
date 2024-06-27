import '../../../core/app_export.dart';
import 'userprofileslist_item_model.dart';

/// This class defines the variables used in the [create_group_chat_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CreateGroupChatModel {
  Rx<List<UserprofileslistItemModel>> userprofileslistItemList = Rx([
    UserprofileslistItemModel(userName: "Darlene Steward".obs),
    UserprofileslistItemModel(userName: "Billie Anderson".obs),
    UserprofileslistItemModel(userName: "Ahmed Boustani".obs)
  ]);
}
