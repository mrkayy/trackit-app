import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trackit_app/core/app_export.dart';
import 'package:trackit_app/core/extensions.dart';
import 'package:trackit_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:trackit_app/widgets/app_bar/appbar_title.dart';
import 'package:trackit_app/widgets/app_bar/custom_app_bar.dart';
import 'package:trackit_app/widgets/custom_icon_button.dart';
import 'package:trackit_app/widgets/custom_outlined_button.dart';

class TrackingDetailScreen extends StatelessWidget {
  const TrackingDetailScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        // appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 32.sp),
            child: SizedBox(
              height: 1280.h,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  _buildFortyEight(context),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
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
                          _buildFiftyOne(context),
                          26.heightSpacing,
                          _buildSukabumiIndonesia(context),
                          24.heightSpacing,
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_history".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          24.heightSpacing,
                          _buildFifty(context),
                          24.heightSpacing,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  // PreferredSizeWidget _buildAppBar(BuildContext context) {
  //   return CustomAppBar(
  //     leadingWidth: double.maxFinite,
  //     leading: AppbarLeadingImage(
  //       imagePath: ImageConstant.imgGroup1563,
  //       margin: EdgeInsets.only(
  //         left: 24.sp,
  //         top: 8.sp,
  //         right: 311.sp,
  //       ),
  //     ),
  //     centerTitle: true,
  //     title: AppbarTitle(
  //       text: "msg_tracking_details".tr,
  //     ),
  //   );
  // }

  /// Section Widget
  Widget _buildFortyEight(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24.h),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup48,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(16.h),
              decoration: AppDecoration.fillYellow.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder44,
              ),
              child: CustomOutlinedButton(
                text: "lbl_scp6653728497".tr,
              ),
            ),
            125.heightSpacing,
            CustomImageView(
              imagePath: ImageConstant.imgGroup1724,
              height: 171.sp,
              width: 295.sp,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Row(
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
            imagePath: ImageConstant.imgGroup1564Gray90004,
            height: 3.sp,
            width: 13.sp,
            margin: EdgeInsets.only(
              top: 21.sp,
              bottom: 26.sp,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSukabumiIndonesia(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.fillYellow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_sukabumi_indonesia".tr,
            style: theme.textTheme.titleMedium,
          ),
          8.heightSpacing,
          Text(
            "msg_no_receipt_scp6653728497".tr,
            style: CustomTextStyles.bodySmallLime800,
          ),
          16.heightSpacing,
          Divider(),
          15.heightSpacing,
          Text(
            "lbl_2_50_usd".tr,
            style: theme.textTheme.titleMedium,
          ),
          8.heightSpacing,
          Text(
            "lbl_postal_fee".tr,
            style: CustomTextStyles.bodySmallLime800,
          ),
          16.heightSpacing,
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
  Widget _buildFifty(BuildContext context) {
    return SizedBox(
      height: 232.h,
      width: 327.w,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 28.h),
              child: SizedBox(
                height: 177.h,
                child: VerticalDivider(
                  width: 1.w,
                  thickness: 1.sp,
                  color: appTheme.teal50,
                ),
              ),
            ),
          ),
          _buildTittle(
            context,
            deliveryTitle: "msg_send_form_sukabumi".tr,
            deliveryLocation: "msg_sukabumi_indonesia".tr,
            deliveryTime: "lbl_19_00_pm".tr,
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(
                  height: 56.sp,
                  width: 56.sp,
                  padding: EdgeInsets.all(16.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup1703,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.sp,
                      top: 4.sp,
                      bottom: 3.sp,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "msg_transit_sending".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            8.heightSpacing,
                            SizedBox(
                              width: 134.h,
                              child: Text(
                                "msg_jakarta_indonesia".tr,
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyMedium!.copyWith(
                                  height: 1.71,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 56.h,
                          margin: EdgeInsets.only(
                            left: 45.sp,
                            top: 13.sp,
                            bottom: 12.sp,
                          ),
                          child: Text(
                            "lbl_21_00_pm".tr,
                            maxLines: null,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall!.copyWith(
                              height: 2.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          _buildTittle(
            context,
            deliveryTitle: "lbl_in_delivery".tr,
            deliveryLocation: "lbl_bali_indonesia".tr,
            deliveryTime: "lbl_00_00_pm".tr,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTittle(
    BuildContext context, {
    required String deliveryTitle,
    required String deliveryLocation,
    required String deliveryTime,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomIconButton(
          height: 56.sp,
          width: 56.sp,
          padding: EdgeInsets.all(16.h),
          decoration: IconButtonStyleHelper.fillYellow,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup170356x56,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 16.sp,
              top: 4.sp,
              bottom: 3.sp,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      deliveryTitle,
                      style: theme.textTheme.titleSmall!.copyWith(
                        color: appTheme.blueGray900,
                      ),
                    ),
                    8.heightSpacing,
                    SizedBox(
                      width: 148.h,
                      child: Text(
                        deliveryLocation,
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: theme.colorScheme.onError,
                          height: 1.71,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 62.h,
                  margin: EdgeInsets.only(
                    left: 45.sp,
                    top: 13.sp,
                    bottom: 12.sp,
                  ),
                  child: Text(
                    deliveryTime,
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: theme.colorScheme.onError,
                      height: 2.00,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
