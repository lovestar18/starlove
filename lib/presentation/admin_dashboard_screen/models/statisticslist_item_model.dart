import '../../../core/app_export.dart';

/// This class is used in the [statisticslist_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class StatisticslistItemModel {
  StatisticslistItemModel({this.dynamicText, this.dynamicText1, this.id}) {
    dynamicText = dynamicText ?? Rx("22");
    dynamicText1 = dynamicText1 ?? Rx("Members");
    id = id ?? Rx("");
  }

  Rx<String>? dynamicText;

  Rx<String>? dynamicText1;

  Rx<String>? id;
}
