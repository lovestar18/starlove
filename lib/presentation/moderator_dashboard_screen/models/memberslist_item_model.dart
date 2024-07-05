import '../../../core/app_export.dart';

/// This class is used in the [memberslist_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class MemberslistItemModel {
  MemberslistItemModel({this.image, this.title, this.members, this.id}) {
    image = image ?? Rx(ImageConstant.imgPeople142x60);
    title = title ?? Rx("22");
    members = members ?? Rx("Members");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? title;

  Rx<String>? members;

  Rx<String>? id;
}
