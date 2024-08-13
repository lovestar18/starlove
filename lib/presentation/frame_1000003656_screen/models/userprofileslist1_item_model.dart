import '../../../core/app_export.dart';

/// This class is used in the [userprofileslist1_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofileslist1ItemModel {
  Userprofileslist1ItemModel(
      {this.memberName, this.username, this.you, this.id}) {
    memberName = memberName ?? Rx("Member Name");
    username = username ?? Rx("Username");
    you = you ?? Rx("You");
    id = id ?? Rx("");
  }

  Rx<String>? memberName;

  Rx<String>? username;

  Rx<String>? you;

  Rx<String>? id;
}
