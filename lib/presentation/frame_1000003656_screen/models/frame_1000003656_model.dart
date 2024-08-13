import '../../../core/app_export.dart';
import 'userprofileslist1_item_model.dart';

/// This class defines the variables used in the [frame_1000003656_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Frame1000003656Model {
  Rx<List<Userprofileslist1ItemModel>> userprofileslist1ItemList = Rx([
    Userprofileslist1ItemModel(
        memberName: "Member Name".obs,
        username: "Username".obs,
        you: "You".obs),
    Userprofileslist1ItemModel(),
    Userprofileslist1ItemModel(),
    Userprofileslist1ItemModel(),
    Userprofileslist1ItemModel(),
    Userprofileslist1ItemModel()
  ]);
}
