import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_switch.dart';
import '../controller/notification_settings_controller.dart';
import '../models/listgeneralnoti_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ListgeneralnotiItemWidget extends StatelessWidget {
  ListgeneralnotiItemWidget(this.listgeneralnotiItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ListgeneralnotiItemModel listgeneralnotiItemModelObj;

  var controller = Get.find<NotificationSettingsController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  listgeneralnotiItemModelObj.generalNotifica!.value,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              Obx(
                () => CustomSwitch(
                  value: listgeneralnotiItemModelObj.isSelectedSwitch!.value,
                  onChange: (value) {
                    listgeneralnotiItemModelObj.isSelectedSwitch!.value =
                        value ?? false;
                  },
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 12.v),
        SizedBox(
          width: double.maxFinite,
          child: Divider(),
        )
      ],
    );
  }
}
