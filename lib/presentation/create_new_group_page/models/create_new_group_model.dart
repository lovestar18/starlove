import '../../../core/app_export.dart';
import 'userprofile1_item_model.dart';

/// This class defines the variables used in the [create_new_group_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CreateNewGroupModel {
  Rx<List<Userprofile1ItemModel>> userprofile1ItemList = Rx([
    Userprofile1ItemModel(
        memberName: "Member Name".obs, username: "Username".obs),
    Userprofile1ItemModel(
        memberName: "Member Name".obs, username: "Username".obs),
    Userprofile1ItemModel(
        memberName: "Member Name".obs, username: "Username".obs),
    Userprofile1ItemModel(
        memberName: "Member Name".obs, username: "Username".obs),
    Userprofile1ItemModel()
  ]);
}
