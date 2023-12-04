import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trackit_app/core/app_export.dart';
import 'package:trackit_app/widgets/base_button.dart';

class CustomElevatedButton extends BaseButton {
  CustomElevatedButton({
    Key? key,
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    EdgeInsets? margin,
    VoidCallback? onPressed,
    ButtonStyle? buttonStyle,
    Alignment? alignment,
    TextStyle? buttonTextStyle,
    bool? isDisabled,
    double? height,
    double? width,
    required String text,
  }) : super(
          text: text,
          onPressed: onPressed,
          buttonStyle: buttonStyle,
          isDisabled: isDisabled,
          buttonTextStyle: buttonTextStyle,
          height: height,
          width: width,
          alignment: alignment,
          margin: margin,
        );

  final BoxDecoration? decoration;

  final Widget? leftIcon;

  final Widget? rightIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height ?? 56.h,
      width: this.width ?? double.maxFinite,
      margin: margin,
      // padding: EdgeInsets.only(left: 12.sp),
      decoration: decoration,
      child: ElevatedButton(
        style: buttonStyle,
        // ?? .copyWith(
        //   padding: MaterialStateProperty.all(EdgeInsets.all(12.0.sp)),
        // ),
        onPressed: isDisabled ?? false ? null : onPressed ?? () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 32.0.sp,
                width: 32.0.sp,
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 12.sp),
                decoration: BoxDecoration(
                  color: PrimaryColors().white,
                  borderRadius: BorderRadius.circular(35.0.sp),
                ),
                child: leftIcon ?? const SizedBox.shrink(),
              ),
            ),
            Text(
              text,
              style: buttonTextStyle ??
                  CustomTextStyles.titleSmallOnErrorContainer,
            ),
            rightIcon ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
