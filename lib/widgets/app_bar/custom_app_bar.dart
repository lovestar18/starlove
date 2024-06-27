import 'package:flutter/material.dart';
import '../../core/app_export.dart';

enum Style {
  bgStyle,
  bgOutline_1,
  bgGradientnameindigoA70001opacity04namecyan40001opacity04_1,
  bgFill_1,
  bgOutline,
  bgFill_2,
  bgOutline_2,
  bgGradientnameindigoA70001opacity04namecyan40001opacity04,
  bgFill
}

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar(
      {Key? key,
      this.height,
      this.styleType,
      this.leadingWidth,
      this.leading,
      this.title,
      this.centerTitle,
      this.actions})
      : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 56.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 56.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgStyle:
        return Container(
          height: 98.v,
          width: 382.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgFrame427321905,
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
      case Style.bgOutline_1:
        return Container(
          height: 56.v,
          width: 374.h,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: appTheme.gray30002,
                width: 1.h,
              ),
            ),
          ),
        );
      case Style.bgGradientnameindigoA70001opacity04namecyan40001opacity04_1:
        return Stack(
          children: [
            Container(
              height: 56.v,
              width: 374.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0, 0.5),
                  end: Alignment(1, 0.5),
                  colors: [
                    appTheme.indigoA70001.withOpacity(0.4),
                    appTheme.cyan40001.withOpacity(0.4)
                  ],
                ),
              ),
            ),
            Container(
              height: 56.v,
              width: 352.h,
              margin: EdgeInsets.only(
                left: 12.h,
                right: 10.h,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0, 0.5),
                  end: Alignment(1, 0.5),
                  colors: [
                    appTheme.indigoA70001.withOpacity(0.4),
                    appTheme.cyan40001.withOpacity(0.4)
                  ],
                ),
              ),
            )
          ],
        );
      case Style.bgFill_1:
        return Container(
          height: 64.v,
          width: 360.h,
          decoration: BoxDecoration(
            color: theme.colorScheme.secondaryContainer,
          ),
        );
      case Style.bgOutline:
        return Container(
          height: 56.v,
          width: 374.h,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: appTheme.gray30005,
                width: 1.h,
              ),
            ),
          ),
        );
      case Style.bgFill_2:
        return Container(
          height: 62.v,
          width: 288.h,
          margin: EdgeInsets.only(right: 86.h),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary.withOpacity(0.8),
          ),
        );
      case Style.bgOutline_2:
        return Container(
          height: 72.v,
          width: 374.h,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary.withOpacity(1),
            border: Border(
              bottom: BorderSide(
                color: appTheme.gray200,
                width: 1.h,
              ),
            ),
          ),
        );
      case Style.bgGradientnameindigoA70001opacity04namecyan40001opacity04:
        return Stack(
          children: [
            Container(
              height: 56.v,
              width: 374.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0, 0.5),
                  end: Alignment(1, 0.5),
                  colors: [
                    appTheme.indigoA70001.withOpacity(0.4),
                    appTheme.cyan40001.withOpacity(0.4)
                  ],
                ),
              ),
            ),
            Container(
              height: 56.v,
              width: 368.h,
              margin: EdgeInsets.only(right: 6.h),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0, 0.5),
                  end: Alignment(1, 0.5),
                  colors: [
                    appTheme.indigoA70001.withOpacity(0.4),
                    appTheme.cyan40001.withOpacity(0.4)
                  ],
                ),
              ),
            )
          ],
        );
      case Style.bgFill:
        return Container(
          height: 48.v,
          width: 374.h,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary.withOpacity(1),
          ),
        );
      default:
        return null;
    }
  }
}
