import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trackit_app/core/extensions.dart';
import 'package:trackit_app/core/routes/app_routes.dart';
import 'package:trackit_app/core/utils/image_constant.dart';
import 'package:trackit_app/core/localization/app_localization.dart';
import 'package:trackit_app/core/theme/custom_text_style.dart';
import 'package:trackit_app/core/theme/theme_helper.dart';
import 'package:trackit_app/widgets/custom_image_view.dart';

import '../login_screen/widgets/welcomeslider_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trackit_app/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int sliderIndex = 1;
  int itemCount = 3;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.yellow600,
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              child: CustomImageView(
                  imagePath: ImageConstant.imgEllipse4,
                  height: 523.h,
                  width: 306.w,
                  alignment: Alignment.topLeft),
            ),
            Positioned(
              top: -10,
              right: -2,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup1712,
                height: 156.h,
                width: 150.h,
                // radius: BorderRadius.circular(52.h),
                alignment: Alignment.topRight,
              ),
            ),
            Container(
              constraints: BoxConstraints.expand(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.loginGroup,
                    height: 195.5.h,
                    width: 304.w,
                    // radius: BorderRadius.circular(52.h),
                    alignment: Alignment.center,
                  ),
                  97.heightSpacing,
                  _buildWelcomeSlider(context),
                  20.heightSpacing,
                  Container(
                    height: 6.h,
                    padding: EdgeInsets.symmetric(horizontal: 41.h),
                    child: AnimatedSmoothIndicator(
                      activeIndex: sliderIndex,
                      count: itemCount,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                        spacing: 16,
                        activeDotColor: theme.colorScheme.onPrimary,
                        dotColor: theme.colorScheme.onErrorContainer,
                        dotHeight: 6.h,
                        dotWidth: 6.h,
                      ),
                    ),
                  ),
                  58.heightSpacing,
                  CustomElevatedButton(
                      text: "msg_login_with_google".tr,
                      margin: EdgeInsets.symmetric(horizontal: 24.h),
                      leftIcon: CustomImageView(
                          imagePath: ImageConstant.imgIcongoogle,
                          height: 24.sp,
                          width: 24.sp),
                      onPressed: () {
                        onTapLoginWithGoogle(context);
                      }),
                  48.heightSpacing,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("msg_don_t_have_any_account".tr,
                          style: CustomTextStyles.titleSmallLime800),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text("lbl_sign_up".tr,
                            style: CustomTextStyles.titleSmallGray900),
                      )
                    ],
                  ),
                  48.heightSpacing
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeSlider(BuildContext context) {
    return CarouselSlider.builder(
        options: CarouselOptions(
            height: 100.h,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              setState(() {
                sliderIndex = index;
              });
            }),
        itemCount: itemCount,
        itemBuilder: (context, index, realIndex) {
          return WelcomesliderItemWidget();
        });
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapLoginWithGoogle(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenContainerScreen);
  }
}
