import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:theraverse/Ui/Utils/appColors.dart';
import 'package:theraverse/Ui/Utils/appShadows.dart';
import 'package:theraverse/Ui/Utils/appTextStyle.dart';

class AppButton extends StatefulWidget {
  String title;
  VoidCallback? onTap;
  bool filledStyle;
  AppButton({Key? key,this.title="AppButton",this.onTap,this.filledStyle=true}) : super(key: key);

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50.w,vertical: 20.h),
        decoration: BoxDecoration(
          color: widget.filledStyle? AppColors.primary : AppColors.blanc,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [AppShadow.shadow2],
        ),
        child: Text(widget.title,style: widget.filledStyle? AppTextStyle.buttonStyleTexte : AppTextStyle.buttonStyleTexte.copyWith(fontWeight: FontWeight.w300,color: AppColors.primary),),
      ),
    );
  }
}
