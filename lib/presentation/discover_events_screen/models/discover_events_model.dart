import '../../../core/app_export.dart';
import 'eventgrid_item_model.dart';

/// This class defines the variables used in the [discover_events_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class DiscoverEventsModel {
  Rx<List<EventgridItemModel>> eventgridItemList = Rx([
    EventgridItemModel(
        eventNameImage: ImageConstant.imgRectangle1956.obs,
        eventNameText: "Event Name".obs,
        descriptionText: "Description".obs),
    EventgridItemModel(
        eventNameImage: ImageConstant.imgRectangle1957.obs,
        eventNameText: "Event Name".obs,
        descriptionText: "Description".obs),
    EventgridItemModel(
        eventNameImage: ImageConstant.imgRectangle1958.obs,
        eventNameText: "Event Name".obs,
        descriptionText: "Description".obs),
    EventgridItemModel(
        eventNameImage: ImageConstant.imgRectangle1959.obs,
        eventNameText: "Event Name".obs,
        descriptionText: "Description".obs),
    EventgridItemModel(
        eventNameImage: ImageConstant.imgRectangle1958.obs,
        eventNameText: "Group Name".obs,
        descriptionText: "Description".obs),
    EventgridItemModel(
        eventNameImage: ImageConstant.imgRectangle1959.obs,
        eventNameText: "Group Name".obs,
        descriptionText: "Description".obs)
  ]);
}
