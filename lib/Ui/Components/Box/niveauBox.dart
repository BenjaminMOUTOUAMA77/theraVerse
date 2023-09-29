import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:theraverse/Ui/Utils/appColors.dart';
import 'package:theraverse/Ui/Utils/appShadows.dart';
import 'package:theraverse/Ui/Utils/appTextStyle.dart';

class NiveauBox extends StatefulWidget {
  String nom;
  String image;
  String indication;
  VoidCallback? onTap;
  NiveauBox({Key? key,
    this.nom = "Nom de la Vr",
    this.indication = "",
    this.image = "assets/images/im8.jpg",
    this.onTap,
  }) : super(key: key);

  @override
  State<NiveauBox> createState() => _NiveauBoxState();
}

class _NiveauBoxState extends State<NiveauBox> {
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
                color: AppColors.secondary,
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
                          Icons.bakery_dining_outlined,
                          color: AppColors.secondary,
                        ),
                        Gap(20.w),
                        Expanded(
                            child: Text(
                              widget.nom,
                              style: AppTextStyle.buttonStyleTexte.copyWith(
                                  color: AppColors.primary,
                                  overflow: TextOverflow.ellipsis),
                            )),
                      ],
                    ),
                    Gap(20.h),
                    Row(
                      children: [
                        Icon(
                          Icons.data_exploration_outlined,
                          color: AppColors.grisLite,
                        ),
                        Gap(20.w),
                        Expanded(
                            child: Text(
                              widget.indication,
                              overflow: TextOverflow.ellipsis,
                            )),
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
