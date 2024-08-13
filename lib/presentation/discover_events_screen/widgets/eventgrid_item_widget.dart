import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/discover_events_controller.dart';
import '../models/eventgrid_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class EventgridItemWidget extends StatelessWidget {
  EventgridItemWidget(this.eventgridItemModelObj, {Key? key})
      : super(
          key: key,
        );

  EventgridItemModel eventgridItemModelObj;

  var controller = Get.find<DiscoverEventsController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: eventgridItemModelObj.eventNameImage!.value,
            height: 130.v,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
        ),
        SizedBox(height: 8.v),
        Obx(
          () => Text(
            eventgridItemModelObj.eventNameText!.value,
            style: theme.textTheme.labelLarge,
          ),
        ),
        SizedBox(height: 2.v),
        Obx(
          () => Text(
            eventgridItemModelObj.descriptionText!.value,
            style: theme.textTheme.bodySmall,
          ),
        )
      ],
    );
  }
}
