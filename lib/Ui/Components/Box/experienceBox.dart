import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:theraverse/Ui/Utils/appColors.dart';
import 'package:theraverse/Ui/Utils/appShadows.dart';
import 'package:theraverse/Ui/Utils/appTextStyle.dart';

class ExperienceBox extends StatefulWidget {
  String nom;
  String image;
  String indication;
  VoidCallback? onTap;
  ExperienceBox({
    Key? key,
    this.nom = "Nom de la Vr",
    this.indication = "",
    this.image = "assets/images/im8.jpg",
    this.onTap,
  }) : super(key: key);

  @override
  State<ExperienceBox> createState() => _ExperienceBoxState();
}

class _ExperienceBoxState extends State<ExperienceBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.blanc,
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
                color: AppColors.grisLite,
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
                          Icons.view_in_ar_rounded,
                          color: AppColors.gris,
                        ),
                        Gap(20.w),
                        Expanded(
                          child: Text(
                            widget.nom,
                            style: AppTextStyle.buttonStyleTexte.copyWith(
                              color: AppColors.grisTexte,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(20.h),
                    Row(
                      children: [
                        Icon(
                          Icons.stacked_bar_chart_outlined,
                          color: AppColors.grisLite,
                        ),
                        Gap(20.w),
                        Expanded(
                          child: Row(
                            children: [
                              Text(
                                "Score : ",
                                style: AppTextStyle.filedTexte
                                    .copyWith(fontSize: 4.sp + 10),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                "80",
                                style: AppTextStyle.filedTexte.copyWith(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 4.sp + 12),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
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
