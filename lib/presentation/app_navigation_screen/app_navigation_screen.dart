// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:trackit_app/core/app_export.dart';

// class AppNavigationScreen extends StatelessWidget {
//   const AppNavigationScreen({Key? key})
//       : super(
//           key: key,
//         );

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Color(0XFFFFFFFF),
//         body: SizedBox(
//           width: double.maxFinite,
//           child: Column(
//             children: [
//               _buildAppNavigation(context),
//               Expanded(
//                 child: SingleChildScrollView(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Color(0XFFFFFFFF),
//                     ),
//                     child: Column(
//                       children: [
//                         _buildScreenTitle(
//                           context,
//                           screenTitle: "Tracking Detail Screen".tr,
//                           onTapScreenTitle: () => onTapScreenTitle(
//                               context, AppRoutes.trackingDetailScreen),
//                         ),
//                         _buildScreenTitle(
//                           context,
//                           screenTitle: "Login Screen".tr,
//                           onTapScreenTitle: () =>
//                               onTapScreenTitle(context, AppRoutes.loginScreen),
//                         ),
//                         _buildScreenTitle(
//                           context,
//                           screenTitle: "Home Screen - Container".tr,
//                           onTapScreenTitle: () => onTapScreenTitle(
//                               context, AppRoutes.homeScreenContainerScreen),
//                         ),
//                         _buildScreenTitle(
//                           context,
//                           screenTitle: "Track".tr,
//                           onTapScreenTitle: () =>
//                               onTapScreenTitle(context, AppRoutes.trackScreen),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildAppNavigation(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Color(0XFFFFFFFF),
//       ),
//       child: Column(
//         children: [
//           SizedBox(height: 10.h),
//           Align(
//             alignment: Alignment.centerLeft,
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20.h),
//               child: Text(
//                 "App Navigation".tr,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Color(0XFF000000),
//                   fontSize: 20.sp,
//                   fontFamily: 'Roboto',
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 10.h),
//           Align(
//             alignment: Alignment.centerLeft,
//             child: Padding(
//               padding: EdgeInsets.only(left: 20.h),
//               child: Text(
//                 "Check your app's UI from the below demo screens of your app."
//                     .tr,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Color(0XFF888888),
//                   fontSize: 16.sp,
//                   fontFamily: 'Roboto',
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 5.h),
//           Divider(
//             height: 1.h,
//             thickness: 1.sp,
//             color: Color(0XFF000000),
//           ),
//         ],
//       ),
//     );
//   }

//   /// Common widget
//   Widget _buildScreenTitle(
//     BuildContext context, {
//     required String screenTitle,
//     Function()? onTapScreenTitle,
//   }) {
//     return GestureDetector(
//       onTap: onTapScreenTitle,
//       child: Container(
//         decoration: BoxDecoration(
//           color: Color(0XFFFFFFFF),
//         ),
//         child: Column(
//           children: [
//             SizedBox(height: 10.h),
//             Align(
//               alignment: Alignment.centerLeft,
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 20.h),
//                 child: Text(
//                   screenTitle,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Color(0XFF000000),
//                     fontSize: 20.sp,
//                     fontFamily: 'Roboto',
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10.h),
//             SizedBox(height: 5.h),
//             Divider(
//               height: 1.h,
//               thickness: 1.sp,
//               color: Color(0XFF888888),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   /// Common click event
//   void onTapScreenTitle(
//     BuildContext context,
//     String routeName,
//   ) {
//     Navigator.pushNamed(context, routeName);
//   }
// }
