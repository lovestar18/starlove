import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist4_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofilelist4ItemModel {
  Userprofilelist4ItemModel({this.adinanurrahma, this.you, this.id}) {
    adinanurrahma = adinanurrahma ?? Rx("Adina Nurrahma");
    you = you ?? Rx("You");
    id = id ?? Rx("");
  }

  Rx<String>? adinanurrahma;

  Rx<String>? you;

  Rx<String>? id;
}
