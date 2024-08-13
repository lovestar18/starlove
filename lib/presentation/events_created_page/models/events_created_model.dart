import '../../../core/app_export.dart';
import 'eventdetailsgrid_item_model.dart';

/// This class defines the variables used in the [events_created_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class EventsCreatedModel {
  Rx<List<EventdetailsgridItemModel>> eventdetailsgridItemList = Rx([
    EventdetailsgridItemModel(
        eventName: ImageConstant.imgRectangle1956.obs,
        eventName1: "Event Name".obs,
        description: "Description".obs,
        text: "+20".obs),
    EventdetailsgridItemModel(
        eventName: ImageConstant.imgRectangle1957.obs,
        eventName1: "Event Name".obs,
        description: "Description".obs,
        text: "+20".obs),
    EventdetailsgridItemModel(
        eventName: ImageConstant.imgRectangle1958.obs,
        eventName1: "Event Name".obs,
        description: "Description".obs,
        text: "+20".obs),
    EventdetailsgridItemModel(
        eventName: ImageConstant.imgRectangle1959.obs,
        eventName1: "Event Name".obs,
        description: "Description".obs,
        text: "+20".obs)
  ]);
}
