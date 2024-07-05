import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist6_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofilelist6ItemModel {
  Userprofilelist6ItemModel({this.userName, this.userHandle, this.id}) {
    userName = userName ?? Rx("Name");
    userHandle = userHandle ?? Rx("@handle");
    id = id ?? Rx("");
  }

  Rx<String>? userName;

  Rx<String>? userHandle;

  Rx<String>? id;
}
