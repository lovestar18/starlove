import '../../../core/app_export.dart';

/// This class is used in the [groupgrid1_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Groupgrid1ItemModel {
  Groupgrid1ItemModel(
      {this.groupImage, this.groupName, this.groupDescriptio, this.id}) {
    groupImage = groupImage ?? Rx(ImageConstant.imgRectangle1956);
    groupName = groupName ?? Rx("Group Name");
    groupDescriptio = groupDescriptio ?? Rx("Description");
    id = id ?? Rx("");
  }

  Rx<String>? groupImage;

  Rx<String>? groupName;

  Rx<String>? groupDescriptio;

  Rx<String>? id;
}
