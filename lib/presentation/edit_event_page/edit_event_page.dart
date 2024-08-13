import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_search_view.dart';
import 'controller/edit_event_controller.dart';
import 'models/edit_event_model.dart';
import 'models/userprofile2_item_model.dart';
import 'widgets/userprofile2_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class EditEventPage extends StatelessWidget {
  EditEventPage({Key? key})
      : super(
          key: key,
        );

  EditEventController controller =
      Get.put(EditEventController(EditEventModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.gray50,
        body: _buildMainScrollView(),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchAndUserProfiles() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          CustomSearchView(
            controller: controller.searchController,
            hintText: "lbl_search".tr,
            hintStyle: CustomTextStyles.bodyMediumBluegray3000114_1,
          ),
          SizedBox(height: 20.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_78_members".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgPlusBlack900,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "lbl_add_moderator".tr,
                    style: CustomTextStyles.labelMediumBluegray90001.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20.v),
          SizedBox(
            width: double.maxFinite,
            child: Obx(
              () => ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 14.v,
                  );
                },
                itemCount: controller
                    .editEventModelObj.value.userprofile2ItemList.value.length,
                itemBuilder: (context, index) {
                  Userprofile2ItemModel model = controller.editEventModelObj
                      .value.userprofile2ItemList.value[index];
                  return Userprofile2ItemWidget(
                    model,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMainScrollView() {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [_buildSearchAndUserProfiles()],
      ),
    );
  }
}
