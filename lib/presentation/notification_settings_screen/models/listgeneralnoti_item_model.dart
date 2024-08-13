import '../../../core/app_export.dart';

/// This class is used in the [listgeneralnoti_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ListgeneralnotiItemModel {
  ListgeneralnotiItemModel(
      {this.generalNotifica, this.isSelectedSwitch, this.id}) {
    generalNotifica = generalNotifica ?? Rx("General Notifications");
    isSelectedSwitch = isSelectedSwitch ?? Rx(false);
    id = id ?? Rx("");
  }

  Rx<String>? generalNotifica;

  Rx<bool>? isSelectedSwitch;

  Rx<String>? id;
}
