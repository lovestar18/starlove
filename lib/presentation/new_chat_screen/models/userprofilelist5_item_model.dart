import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist5_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofilelist5ItemModel {
  Userprofilelist5ItemModel({this.frankesteban, this.handle, this.id}) {
    frankesteban = frankesteban ?? Rx("Name");
    handle = handle ?? Rx("@handle");
    id = id ?? Rx("");
  }

  Rx<String>? frankesteban;

  Rx<String>? handle;

  Rx<String>? id;
}
