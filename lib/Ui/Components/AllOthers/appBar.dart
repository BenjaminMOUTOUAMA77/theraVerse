import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:theraverse/Ui/Utils/appColors.dart';
import 'package:theraverse/Ui/Utils/appShadows.dart';

AppBar MakeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: AppColors.primary,
    title: Center(
      child: Image.asset(
        "assets/images/TheraVerseSFB.png",
        height: 120.h,
      ),
    ),
    centerTitle: true,
    leading: GestureDetector(
      child: Icon(
        Icons.navigate_before_outlined,
        color: Colors.white,
        size: 120.h,
      ),
      onTap: () => Navigator.pop(context),
    ),
    actions: [
      Container(
        height: 100.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [AppShadow.shadow0],
          border: Border.all(color: AppColors.blancGrise,width: 2,strokeAlign: BorderSide.strokeAlignOutside),
        ),
        clipBehavior: Clip.hardEdge,
        child: Image.asset("assets/images/im8.jpg",fit: BoxFit.cover,),
      ),
      Gap(10.w),
    ],
  );
}
