import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/create_post_options_controller.dart';
import 'models/create_post_options_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CreatePostOptionsPage extends StatelessWidget {
  CreatePostOptionsPage({Key? key})
      : super(
          key: key,
        );

  CreatePostOptionsController controller =
      Get.put(CreatePostOptionsController(CreatePostOptionsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: Padding(
          padding: EdgeInsets.only(
            left: 22.h,
            right: 14.h,
            bottom: 26.v,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomOutlinedButton(
                text: "lbl_post".tr,
              )
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(
            left: 22.h,
            right: 14.h,
            bottom: 26.v,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomOutlinedButton(
                text: "lbl_post".tr,
              )
            ],
          ),
        ),
      ),
    );
  }
}
