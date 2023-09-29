import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:theraverse/Ui/Utils/appColors.dart';
import 'package:theraverse/Ui/Utils/appShadows.dart';
import 'package:theraverse/Ui/Utils/appTextStyle.dart';

class TervBox extends StatefulWidget {
  String nom;
  String image;
  String phobies;
  VoidCallback? onTap;
  TervBox({
    Key? key,
    this.nom = "Nom de la Vr",
    this.phobies = "",
    this.image = "assets/images/im8.jpg",
    this.onTap,
  }) : super(key: key);

  @override
  State<TervBox> createState() => _TervBoxState();
}

class _TervBoxState extends State<TervBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primary,
          boxShadow: [AppShadow.shadow2],
          borderRadius: BorderRadius.circular(20),
        ),
        clipBehavior: Clip.hardEdge,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                widget.image,
                height: 800.h,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.blanc,
                  boxShadow: [AppShadow.shadow2, AppShadow.shadow2],
                ),
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: Column(
                  children: [
                    Gap(20.h),
                    Row(
                      children: [
                        Icon(
                          Icons.water_outlined,
                          color: AppColors.tertiaire,
                        ),
                        Gap(20.w),
                        Expanded(
                          child: Text(
                            widget.nom,
                            style: AppTextStyle.buttonStyleTexte.copyWith(
                                color: AppColors.blanc,
                                overflow: TextOverflow.ellipsis),
                          ),
                        ),
                      ],
                    ),
                    Gap(20.h),
                    Row(
                      children: [
                        Icon(
                          Icons.lens_blur,
                          color: AppColors.grisLite,
                        ),
                        Gap(20.w),
                        Expanded(
                          child: Text(
                            widget.phobies,
                            style: AppTextStyle.filedTexte
                                .copyWith(color: AppColors.blanc),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
