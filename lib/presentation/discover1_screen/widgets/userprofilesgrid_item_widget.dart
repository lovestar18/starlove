import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/discover1_controller.dart';
import '../models/userprofilesgrid_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofilesgridItemWidget extends StatelessWidget {
  UserprofilesgridItemWidget(this.userprofilesgridItemModelObj, {Key? key})
      : super(
          key: key,
        );

  UserprofilesgridItemModel userprofilesgridItemModelObj;

  var controller = Get.find<Discover1Controller>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => CustomImageView(
            imagePath: userprofilesgridItemModelObj.userImage!.value,
            height: 130.v,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
        ),
        SizedBox(height: 6.v),
        SizedBox(
          width: double.maxFinite,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        userprofilesgridItemModelObj.fullName!.value,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Obx(
                      () => Text(
                        userprofilesgridItemModelObj.username!.value,
                        style: theme.textTheme.bodySmall,
                      ),
                    )
                  ],
                ),
              ),
              Obx(
                () => CustomImageView(
                  imagePath: userprofilesgridItemModelObj.fullName1!.value,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
