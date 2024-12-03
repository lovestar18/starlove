import '../../../core/app_export.dart';

/// This class is used in the [userprofileslist_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofileslistItemModel {
  UserprofileslistItemModel(
      {this.username, this.handle, this.button, this.buttonOne, this.id}) {
    username = username ?? Rx("Name");
    handle = handle ?? Rx("@handle");
    button = button ?? Rx("VIEW");
    buttonOne = buttonOne ?? Rx("Remove");
    id = id ?? Rx("");
  }

  Rx<String>? username;

  Rx<String>? handle;

  Rx<String>? button;

  Rx<String>? buttonOne;

  Rx<String>? id;
}
