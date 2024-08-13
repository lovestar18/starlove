import '../../../core/app_export.dart';

/// This class is used in the [featuresgrid_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class FeaturesgridItemModel {
  FeaturesgridItemModel({this.closeImage, this.text, this.id}) {
    closeImage = closeImage ?? Rx(ImageConstant.imgCloseOnprimary);
    text = text ?? Rx("ForJew Page");
    id = id ?? Rx("");
  }

  Rx<String>? closeImage;

  Rx<String>? text;

  Rx<String>? id;
}
