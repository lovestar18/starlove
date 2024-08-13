import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/feed_tab_container_controller.dart';
import '../models/listyour_story_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ListyourStoryItemWidget extends StatelessWidget {
  ListyourStoryItemWidget(this.listyourStoryItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ListyourStoryItemModel listyourStoryItemModelObj;

  var controller = Get.find<FeedTabContainerController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58.h,
      margin: EdgeInsets.only(top: 74.v),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: listyourStoryItemModelObj.yourStoryOne!.value,
              height: 54.v,
              width: double.maxFinite,
            ),
          ),
          SizedBox(height: 10.v),
          Obx(
            () => Text(
              listyourStoryItemModelObj.yourstory!.value,
              style: CustomTextStyles.bodySmallBluegray9000112_1,
            ),
          )
        ],
      ),
    );
  }
}
