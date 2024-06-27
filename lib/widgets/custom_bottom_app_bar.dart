import 'package:flutter/material.dart';
import '../core/app_export.dart';

enum BottomBarEnum {
  Homegray400,
  Gridgray400,
  Iconlylightnotificationgray400,
  Iconlylightprofile
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomBottomAppBar extends StatelessWidget {
  CustomBottomAppBar({Key? key, this.onChanged})
      : super(
          key: key,
        );

  RxList<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgHomeGray400,
        activeIcon: ImageConstant.imgHomeGray400,
        type: BottomBarEnum.Homegray400,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgGridGray400,
      activeIcon: ImageConstant.imgGridGray400,
      type: BottomBarEnum.Gridgray400,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconlyLightNotificationGray400,
      activeIcon: ImageConstant.imgIconlyLightNotificationGray400,
      type: BottomBarEnum.Iconlylightnotificationgray400,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconlyLightProfile,
      activeIcon: ImageConstant.imgIconlyLightProfile,
      type: BottomBarEnum.Iconlylightprofile,
    )
  ].obs;

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: SizedBox(
          height: 94.v,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              bottomMenuList.length,
              (index) {
                return InkWell(
                  onTap: () {
                    for (var element in bottomMenuList) {
                      element.isSelected = false;
                    }
                    bottomMenuList[index].isSelected = true;
                    onChanged?.call(bottomMenuList[index].type);
                    bottomMenuList.refresh();
                  },
                  child: bottomMenuList[index].isSelected
                      ? CustomImageView(
                          imagePath: bottomMenuList[index].activeIcon,
                          height: 20.v,
                          width: 24.h,
                          color: appTheme.gray400)
                      : CustomImageView(
                          imagePath: bottomMenuList[index].icon,
                          height: 20.v,
                          width: 24.h,
                          color: appTheme.gray400,
                        ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class BottomMenuModel {
  BottomMenuModel(
      {required this.icon,
      required this.activeIcon,
      required this.type,
      this.isSelected = false});

  String icon;

  String activeIcon;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
