import '../../../core/app_export.dart';

/// This class is used in the [listwhyareyou_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ListwhyareyouItemModel {
  ListwhyareyouItemModel({this.whyareyou, this.id}) {
    whyareyou = whyareyou ?? Rx("Why are you reporting this?");
    id = id ?? Rx("");
  }

  Rx<String>? whyareyou;

  Rx<String>? id;
}
