import '../../../core/app_export.dart';

/// This class is used in the [userprofile2_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofile2ItemModel {
  Userprofile2ItemModel({this.memberName, this.username, this.id}) {
    memberName = memberName ?? Rx("Member Name");
    username = username ?? Rx("Username");
    id = id ?? Rx("");
  }

  Rx<String>? memberName;

  Rx<String>? username;

  Rx<String>? id;
}
