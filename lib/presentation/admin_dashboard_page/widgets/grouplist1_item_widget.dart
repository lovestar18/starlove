import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_outlined_button.dart';
import '../controller/admin_dashboard_controller.dart';
import '../models/grouplist1_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Grouplist1ItemWidget extends StatelessWidget {
  Grouplist1ItemWidget(this.grouplist1ItemModelObj, {Key? key, this.onTapView})
      : super(
          key: key,
        );

  Grouplist1ItemModel grouplist1ItemModelObj;

  var controller = Get.find<AdminDashboardController>();

  VoidCallback? onTapView;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgAvatar60x60,
          height: 60.adaptSize,
          width: 60.adaptSize,
          radius: BorderRadius.circular(
            30.h,
          ),
        ),
        SizedBox(width: 10.h),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  grouplist1ItemModelObj.groupName!.value,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 2.v),
              Obx(
                () => Text(
                  grouplist1ItemModelObj.groupDescriptio!.value,
                  style: theme.textTheme.bodySmall,
                ),
              )
            ],
          ),
        ),
        SizedBox(width: 10.h),
        CustomOutlinedButton(
          height: 32.v,
          width: 60.h,
          text: "lbl_view2".tr.toUpperCase(),
          buttonTextStyle: theme.textTheme.labelMedium!,
          onPressed: () {
            onTapView?.call();
          },
        )
      ],
    );
  }
}
