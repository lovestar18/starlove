import '../../../core/app_export.dart';
import 'userprofilelist6_item_model.dart';

/// This class defines the variables used in the [listofgroupmembers_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ListofgroupmembersModel {
  Rx<List<Userprofilelist6ItemModel>> userprofilelist6ItemList = Rx([
    Userprofilelist6ItemModel(userName: "Name".obs, userHandle: "@handle".obs),
    Userprofilelist6ItemModel(userName: "Name".obs, userHandle: "@handle".obs),
    Userprofilelist6ItemModel(userName: "Name".obs, userHandle: "@handle".obs),
    Userprofilelist6ItemModel(userName: "Name".obs, userHandle: "@handle".obs),
    Userprofilelist6ItemModel(userName: "Name".obs, userHandle: "@handle".obs),
    Userprofilelist6ItemModel(userName: "Name".obs, userHandle: "@handle".obs),
    Userprofilelist6ItemModel(userName: "Name".obs, userHandle: "@handle".obs)
  ]);
}
