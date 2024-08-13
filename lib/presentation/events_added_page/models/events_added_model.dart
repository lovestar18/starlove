import '../../../core/app_export.dart';
import 'eventdetails_item_model.dart';

/// This class defines the variables used in the [events_added_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class EventsAddedModel {
  Rx<List<EventdetailsItemModel>> eventdetailsItemList = Rx([
    EventdetailsItemModel(
        eventName: ImageConstant.imgRectangle1956.obs,
        eventDescriptio: "Event Name".obs,
        description: "Description".obs,
        text1: "+20".obs),
    EventdetailsItemModel(
        eventName: ImageConstant.imgRectangle1957.obs,
        eventDescriptio: "Event Name".obs,
        description: "Description".obs,
        text1: "+20".obs),
    EventdetailsItemModel(
        eventName: ImageConstant.imgRectangle1958.obs,
        eventDescriptio: "Event Name".obs,
        description: "Description".obs,
        text1: "+20".obs),
    EventdetailsItemModel(
        eventName: ImageConstant.imgRectangle1959.obs,
        eventDescriptio: "Event Name".obs,
        description: "Description".obs,
        text1: "+20".obs)
  ]);
}
