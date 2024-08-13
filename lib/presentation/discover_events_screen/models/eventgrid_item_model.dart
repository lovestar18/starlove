import '../../../core/app_export.dart';

/// This class is used in the [eventgrid_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class EventgridItemModel {
  EventgridItemModel(
      {this.eventNameImage,
      this.eventNameText,
      this.descriptionText,
      this.id}) {
    eventNameImage = eventNameImage ?? Rx(ImageConstant.imgRectangle1956);
    eventNameText = eventNameText ?? Rx("Event Name");
    descriptionText = descriptionText ?? Rx("Description");
    id = id ?? Rx("");
  }

  Rx<String>? eventNameImage;

  Rx<String>? eventNameText;

  Rx<String>? descriptionText;

  Rx<String>? id;
}
