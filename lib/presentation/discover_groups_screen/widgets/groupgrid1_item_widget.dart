import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/discover_groups_controller.dart';
import '../models/groupgrid1_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Groupgrid1ItemWidget extends StatelessWidget {
  Groupgrid1ItemWidget(this.groupgrid1ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Groupgrid1ItemModel groupgrid1ItemModelObj;

  var controller = Get.find<DiscoverGroupsController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: groupgrid1ItemModelObj.groupImage!.value,
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
            groupgrid1ItemModelObj.groupName!.value,
            style: theme.textTheme.labelLarge,
          ),
        ),
        Obx(
          () => Text(
            groupgrid1ItemModelObj.groupDescriptio!.value,
            style: theme.textTheme.bodySmall,
          ),
        )
      ],
    );
  }
}
