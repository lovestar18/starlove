import '../../../core/app_export.dart';
import 'userprofile2_item_model.dart';

/// This class defines the variables used in the [edit_event_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class EditEventModel {
  Rx<List<Userprofile2ItemModel>> userprofile2ItemList = Rx([
    Userprofile2ItemModel(
        memberName: "Member Name".obs, username: "Username".obs),
    Userprofile2ItemModel(
        memberName: "Member Name".obs, username: "Username".obs),
    Userprofile2ItemModel(),
    Userprofile2ItemModel(),
    Userprofile2ItemModel(),
    Userprofile2ItemModel()
  ]);
}
