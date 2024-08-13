import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_search_view.dart';
import 'controller/create_new_group_controller.dart';
import 'models/create_new_group_model.dart';
import 'models/userprofile1_item_model.dart';
import 'widgets/userprofile1_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CreateNewGroupPage extends StatelessWidget {
  CreateNewGroupPage({Key? key})
      : super(
          key: key,
        );

  CreateNewGroupController controller =
      Get.put(CreateNewGroupController(CreateNewGroupModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: _buildMainScrollView(),
      ),
    );
  }

  /// Section Widget
  Widget _buildMembersSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
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
          SizedBox(height: 22.v),
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
                itemCount: controller.createNewGroupModelObj.value
                    .userprofile1ItemList.value.length,
                itemBuilder: (context, index) {
                  Userprofile1ItemModel model = controller
                      .createNewGroupModelObj
                      .value
                      .userprofile1ItemList
                      .value[index];
                  return Userprofile1ItemWidget(
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
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 18.v),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Column(
                      children: [
                        CustomSearchView(
                          controller: controller.searchController,
                          hintText: "lbl_search".tr,
                          hintStyle:
                              CustomTextStyles.bodyMediumBluegray3000114_1,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16.v),
                  _buildMembersSection()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
