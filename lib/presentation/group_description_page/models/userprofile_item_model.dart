import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofileItemModel {
  UserprofileItemModel({this.adinanurrahma, this.you, this.id}) {
    adinanurrahma = adinanurrahma ?? Rx("Adina Nurrahma");
    you = you ?? Rx("You");
    id = id ?? Rx("");
  }

  Rx<String>? adinanurrahma;

  Rx<String>? you;

  Rx<String>? id;
}
