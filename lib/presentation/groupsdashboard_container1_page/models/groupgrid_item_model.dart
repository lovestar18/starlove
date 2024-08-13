import '../../../core/app_export.dart';

/// This class is used in the [groupgrid_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class GroupgridItemModel {
  GroupgridItemModel(
      {this.groupImage,
      this.groupName,
      this.groupDescriptio,
      this.groupCount,
      this.id}) {
    groupImage = groupImage ?? Rx(ImageConstant.imgRectangle1956);
    groupName = groupName ?? Rx("Group Name");
    groupDescriptio = groupDescriptio ?? Rx("Description");
    groupCount = groupCount ?? Rx("+20");
    id = id ?? Rx("");
  }

  Rx<String>? groupImage;

  Rx<String>? groupName;

  Rx<String>? groupDescriptio;

  Rx<String>? groupCount;

  Rx<String>? id;
}
