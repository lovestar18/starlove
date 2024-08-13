import '../../../core/app_export.dart';

/// This class is used in the [eventdetailsgrid_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class EventdetailsgridItemModel {
  EventdetailsgridItemModel(
      {this.eventName, this.eventName1, this.description, this.text, this.id}) {
    eventName = eventName ?? Rx(ImageConstant.imgRectangle1956);
    eventName1 = eventName1 ?? Rx("Event Name");
    description = description ?? Rx("Description");
    text = text ?? Rx("+20");
    id = id ?? Rx("");
  }

  Rx<String>? eventName;

  Rx<String>? eventName1;

  Rx<String>? description;

  Rx<String>? text;

  Rx<String>? id;
}
