import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trackit_app/core/app_export.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  const SliderItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 265.h,
        width: 255.w,
        // margin: EdgeInsets.only(right: 96.h),
        // padding: EdgeInsets.symmetric(
        //   horizontal: 28.h,
        //   vertical: 18.sp,
        // ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder32,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgPhoBikePersR,
          height: 229.h,
          width: 199.w,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
