import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofileItemModel {
  UserprofileItemModel({this.username, this.userText, this.id}) {
    username = username ?? Rx("Adina Nurrahma");
    userText = userText ?? Rx("You");
    id = id ?? Rx("");
  }

  Rx<String>? username;

  Rx<String>? userText;

  Rx<String>? id;
}
