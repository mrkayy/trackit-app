import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trackit_app/core/app_export.dart';
import 'package:trackit_app/widgets/app_bar/appbar_image.dart';
import 'package:trackit_app/widgets/app_bar/appbar_trailing_image.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({Key? key, this.height}) : super(key: key);
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.sp),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 72.sp),
            child: Container(
                margin: EdgeInsets.only(left: 24.sp, top: 4.sp, bottom: 4.sp),
                decoration: AppDecoration.fillGray
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
                child: AppbarImage(imagePath: ImageConstant.imgMaskGroup)),
          ),
          AppbarTrailingImage(
            imagePath: ImageConstant.imgGroup1574,
            margin: EdgeInsets.symmetric(horizontal: 24.sp, vertical: 8.sp),
          )
        ],
      ),
      // height: 56.h,
      width: double.infinity,
    );
  }

  @override
  Size get preferredSize => Size(
        double.infinity,
        height ?? 80.h,
      );
}
