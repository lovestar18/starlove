import '../../../core/app_export.dart';

/// This class is used in the [eventdetails_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class EventdetailsItemModel {
  EventdetailsItemModel(
      {this.eventName,
      this.eventDescriptio,
      this.description,
      this.text1,
      this.id}) {
    eventName = eventName ?? Rx(ImageConstant.imgRectangle1956);
    eventDescriptio = eventDescriptio ?? Rx("Event Name");
    description = description ?? Rx("Description");
    text1 = text1 ?? Rx("+20");
    id = id ?? Rx("");
  }

  Rx<String>? eventName;

  Rx<String>? eventDescriptio;

  Rx<String>? description;

  Rx<String>? text1;

  Rx<String>? id;
}
