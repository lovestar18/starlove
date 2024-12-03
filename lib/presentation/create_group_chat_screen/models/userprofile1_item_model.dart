import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofile1ItemModel {
  Userprofile1ItemModel({this.userName, this.id}) {
    userName = userName ?? Rx("Darlene Steward");
    id = id ?? Rx("");
  }

  Rx<String>? userName;

  Rx<String>? id;
}
