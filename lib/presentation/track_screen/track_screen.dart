import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trackit_app/core/app_export.dart';
import 'package:trackit_app/core/extensions.dart';
import 'package:trackit_app/presentation/home_screen_page/home_screen_page.dart';
import 'package:trackit_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:trackit_app/widgets/app_bar/custom_app_bar.dart';
import 'package:trackit_app/widgets/custom_bottom_bar.dart';
import 'package:trackit_app/widgets/custom_icon_button.dart';
import 'package:trackit_app/widgets/custom_text_form_field.dart';

class TrackScreen extends StatelessWidget {
  TrackScreen({Key? key}) : super(key: key);

  final TextEditingController group1055Controller = TextEditingController();

  final TextEditingController arrowrightController = TextEditingController();

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.sp,
            vertical: 22.sp,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "msg_hello_good_morning".tr,
                  style: CustomTextStyles.titleMediumBluegray90001,
                ),
              ),
              34.heightSpacing,
              // _buildTrackSection(context),

              Form(
                key: _formKey,
                child: Container(
                  height: 308.h,
                  width: 327.w,
                  decoration: AppDecoration.fillYellow.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder32,
                  ),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Positioned(
                        top: -5,
                        right: -10,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup1712,
                          height: 144.h,
                          width: 132.w,
                          radius: BorderRadius.circular(
                            32.h,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 53.h,
                        left: 24.sp,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "msg_track_your_package".tr,
                              style: CustomTextStyles.titleMediumGray90001,
                            ),
                            7.heightSpacing,
                            Container(
                              width: 239.h,
                              margin: EdgeInsets.only(right: 39.h),
                              child: Text(
                                "msg_enter_the_receipt".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style:
                                    CustomTextStyles.bodyMediumLime800.copyWith(
                                  height: 1.43,
                                ),
                              ),
                            ),
                            27.heightSpacing,
                            CustomTextFormField(),
                            10.heightSpacing,
                            Container(
                              decoration: BoxDecoration(
                                  color: appTheme.black900,
                                  borderRadius: BorderRadius.circular(52.0.sp)),
                              width: 279.w,
                              height: 56.h,
                              child: Row(
                                children: [],
                              ),
                            ),
                            // CustomTextFormField(
                            //   // controller: arrowrightController,
                            //   hintText: "lbl_track_now".tr,
                            //   // textInputAction: TextInputAction.done,
                            //   suffix: Container(
                            //     margin: EdgeInsets.fromLTRB(
                            //         30.sp, 28.sp, 28.sp, 28.sp),
                            //     child: CustomImageView(
                            //       imagePath: ImageConstant.imgArrowright,
                            //       height: 1.h,
                            //       width: 16.h,
                            //     ),
                            //   ),
                            //   suffixConstraints: BoxConstraints(
                            //     maxHeight: 56.h,
                            //   ),
                            //   contentPadding: EdgeInsets.only(
                            //     left: 30.sp,
                            //     top: 19.sp,
                            //     bottom: 19.sp,
                            //   ),
                            //   borderDecoration:
                            //       TextFormFieldStyleHelper.fillBlack,
                            //   filled: true,
                            //   fillColor: appTheme.black900,
                            // ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              40.heightSpacing,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "msg_tracking_history".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              16.heightSpacing,
              Padding(
                padding: EdgeInsets.only(right: 7.h),
                child: _buildTittle(
                  context,
                  userName: "lbl_scp9374826473".tr,
                  userStatus: "lbl_in_the_process".tr,
                ),
              ),
              24.heightSpacing,
              Padding(
                padding: EdgeInsets.only(right: 7.h),
                child: _buildTittle(
                  context,
                  userName: "lbl_scp6653728497".tr,
                  userStatus: "lbl_in_delivery2".tr,
                ),
              ),
              5.heightSpacing,
            ],
          ),
        ),
        // bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  // /// Section Widget
  // Widget _buildTrackSection(BuildContext context) {
  //   return SizedBox(
  //     height: 308.h,
  //     width: 327.w,
  //     child: Column(
  //       //  /   alignment: Alignment.bottomCenter,
  //       children: [
  //         Container(
  //           decoration: AppDecoration.fillYellow.copyWith(
  //             borderRadius: BorderRadiusStyle.roundedBorder32,
  //           ),
  //           child: CustomImageView(
  //             imagePath: ImageConstant.imgGroup1712,
  //             height: 144.h,
  //             width: 132.w,
  //             radius: BorderRadius.circular(
  //               32.h,
  //             ),
  //           ),
  //         ),
  //         Padding(
  //           padding: EdgeInsets.only(
  //             left: 24.sp,
  //             right: 24.sp,
  //             bottom: 32.sp,
  //           ),
  //           child: Column(
  //             mainAxisSize: MainAxisSize.min,
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text(
  //                 "msg_track_your_package".tr,
  //                 style: CustomTextStyles.titleMediumGray90001,
  //               ),
  //               7.heightSpacing,
  //               Container(
  //                 width: 239.h,
  //                 margin: EdgeInsets.only(right: 39.h),
  //                 child: Text(
  //                   "msg_enter_the_receipt".tr,
  //                   maxLines: 2,
  //                   overflow: TextOverflow.ellipsis,
  //                   style: CustomTextStyles.bodyMediumLime800.copyWith(
  //                     height: 1.43,
  //                   ),
  //                 ),
  //               ),
  //               27.heightSpacing,
  //               CustomTextFormField(
  //                 controller: group1055Controller,
  //                 hintText: "msg_enter_the_receipt2".tr,
  //                 textInputType: TextInputType.number,
  //               ),
  //               10.heightSpacing,
  //               CustomTextFormField(
  //                 controller: arrowrightController,
  //                 hintText: "lbl_track_now".tr,
  //                 textInputAction: TextInputAction.done,
  //                 suffix: Container(
  //                   margin: EdgeInsets.fromLTRB(30.sp, 28.sp, 28.sp, 28.sp),
  //                   child: CustomImageView(
  //                     imagePath: ImageConstant.imgArrowright,
  //                     height: 1.h,
  //                     width: 16.h,
  //                   ),
  //                 ),
  //                 suffixConstraints: BoxConstraints(
  //                   maxHeight: 56.h,
  //                 ),
  //                 contentPadding: EdgeInsets.only(
  //                   left: 30.sp,
  //                   top: 19.sp,
  //                   bottom: 19.sp,
  //                 ),
  //                 borderDecoration: TextFormFieldStyleHelper.fillBlack,
  //                 filled: true,
  //                 fillColor: appTheme.black900,
  //               ),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  /// Section Widget
  // Widget _buildBottomBar(BuildContext context) {
  //   return CustomBottomBar(
  //     onChanged: (BottomBarEnum type) {
  //       Navigator.pushNamed(
  //           navigatorKey.currentContext!, getCurrentRoute(type));
  //     },
  //   );
  // }

  /// Common widget
  Widget _buildTittle(
    BuildContext context, {
    required String userName,
    required String userStatus,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 56.h,
          width: 56.h,
          padding: EdgeInsets.all(12.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup170356x56,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.sp,
            top: 5.sp,
            bottom: 5.sp,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: CustomTextStyles.titleSmallMedium.copyWith(
                  color: appTheme.blueGray900,
                ),
              ),
              10.heightSpacing,
              Text(
                userStatus,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onError,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgGroup1489,
          height: 12.h,
          width: 12.h,
          margin: EdgeInsets.symmetric(vertical: 21.sp),
        ),
      ],
    );
  }

  ///Handling route based on bottom click actions
  // String getCurrentRoute(BottomBarEnum type) {
  //   switch (type) {
  //     case BottomBarEnum.Home:
  //       return AppRoutes.homeScreenPage;
  //     case BottomBarEnum.Markey:
  //       return AppRoutes.trackScreen;
  //     case BottomBarEnum.Cart:
  //       return "/";
  //     case BottomBarEnum.Heart:
  //       return "/";
  //     default:
  //       return "/";
  //   }
  // }

  ///Handling page based on route
  // Widget getCurrentPage(String currentRoute) {
  //   switch (currentRoute) {
  //     case AppRoutes.homeScreenPage:
  //       return HomeScreenPage();
  //     case AppRoutes.trackScreen:
  //       return TrackScreen();
  //     default:
  //       return DefaultWidget();
  //   }
  // }
}
