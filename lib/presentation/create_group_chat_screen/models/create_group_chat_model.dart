import '../../../core/app_export.dart';
import 'userprofile1_item_model.dart';

/// This class defines the variables used in the [create_group_chat_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CreateGroupChatModel {
  Rx<List<Userprofile1ItemModel>> userprofile1ItemList = Rx([
    Userprofile1ItemModel(userName: "Darlene Steward".obs),
    Userprofile1ItemModel(userName: "Billie Anderson".obs),
    Userprofile1ItemModel(userName: "Ahmed Boustani".obs)
  ]);
}
