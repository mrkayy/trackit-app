import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trackit_app/core/app_export.dart';
import 'package:trackit_app/core/extensions.dart';
import 'package:trackit_app/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class TrackingDetailScreenSwipeUpBottomsheet extends StatelessWidget {
  const TrackingDetailScreenSwipeUpBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.sp,
        vertical: 16.sp,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL35,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 5.h,
            width: 48.w,
            decoration: BoxDecoration(
              color: appTheme.gray300,
              borderRadius: BorderRadius.circular(
                2.h,
              ),
            ),
          ),
          27.heightSpacing,
          _buildEstimateArrivesRow(context),
          26.heightSpacing,
          _buildSukabumiIndonesiaColumn(context),
          27.heightSpacing,
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_history".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          24.heightSpacing,
          _buildTrackingDetailStack(context),
          24.heightSpacing,
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEstimateArrivesRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "msg_estimate_arrives".tr,
              style: theme.textTheme.bodyMedium,
            ),
            3.heightSpacing,
            Text(
              "lbl_2h_40m".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ],
        ),
        CustomImageView(
          imagePath: ImageConstant.imgGroup1564,
          height: 24.sp,
          width: 24.sp,
          margin: EdgeInsets.only(
            top: 10.sp,
            bottom: 16.sp,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSukabumiIndonesiaColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 22.sp,
      ),
      decoration: AppDecoration.fillYellow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "msg_sukabumi_indonesia".tr,
            style: theme.textTheme.titleMedium,
          ),
          7.heightSpacing,
          Text(
            "msg_no_receipt_scp6653728497".tr,
            style: CustomTextStyles.bodySmallLime800,
          ),
          14.heightSpacing,
          Divider(),
          15.heightSpacing,
          Text(
            "lbl_2_50_usd".tr,
            style: theme.textTheme.titleMedium,
          ),
          6.heightSpacing,
          Text(
            "lbl_postal_fee".tr,
            style: CustomTextStyles.bodySmallLime800,
          ),
          15.heightSpacing,
          Divider(),
          15.heightSpacing,
          Text(
            "lbl_bali_indonesia".tr,
            style: theme.textTheme.titleMedium,
          ),
          8.heightSpacing,
          Text(
            "lbl_parcel_24kg".tr,
            style: CustomTextStyles.bodySmallLime800,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTrackingDetailStack(BuildContext context) {
    return SizedBox(
      height: 232.sp,
      width: 327.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 28.h),
              child: SizedBox(
                height: 177.sp,
                child: VerticalDivider(
                  width: 1.h,
                  thickness: 1.sp,
                  color: appTheme.teal50,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(
                  height: 56.sp,
                  width: 56.sp,
                  padding: EdgeInsets.all(12.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup1535,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      top: 4.sp,
                      bottom: 5.sp,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "msg_send_form_sukabumi".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            12.heightSpacing,
                            Text(
                              "msg_sukabumi_indonesia".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 16.sp,
                            bottom: 14.sp,
                          ),
                          child: Text(
                            "lbl_19_00_pm".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(
                  height: 56.sp,
                  width: 56.sp,
                  padding: EdgeInsets.all(12.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup1703,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      top: 5.sp,
                      bottom: 5.sp,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "msg_transit_sending".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            10.heightSpacing,
                            Text(
                              "msg_jakarta_indonesia".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 15.sp,
                            bottom: 14.sp,
                          ),
                          child: Text(
                            "lbl_21_00_pm".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomIconButton(
                  height: 56.sp,
                  width: 56.sp,
                  padding: EdgeInsets.all(12.h),
                  decoration: IconButtonStyleHelper.fillYellow,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup170356x56,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      top: 5.sp,
                      bottom: 5.sp,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_in_delivery".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            10.heightSpacing,
                            Text(
                              "lbl_bali_indonesia".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 15.sp,
                            bottom: 14.sp,
                          ),
                          child: Text(
                            "lbl_00_00_pm".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
