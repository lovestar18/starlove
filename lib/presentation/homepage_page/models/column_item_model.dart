import '../../../core/app_export.dart';

/// This class is used in the [column_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ColumnItemModel {
  ColumnItemModel({this.image, this.text, this.id}) {
    image = image ?? Rx(ImageConstant.imgJewish31);
    text = text ?? Rx("ForJew Page");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? text;

  Rx<String>? id;
}
