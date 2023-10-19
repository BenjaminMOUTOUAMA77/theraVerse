import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:theraverse/Screens/about.dart';
import 'package:theraverse/Screens/account.dart';
import 'package:theraverse/Screens/infos.dart';
import 'package:theraverse/Ui/Utils/appColors.dart';
import 'package:theraverse/Ui/Utils/appShadows.dart';
import 'package:theraverse/Ui/Utils/appTextStyle.dart';

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
      PopupMenuButton(
        onSelected: (value) {
          switch (value) {
            case 'account':
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                  const Account(),
                ),
              );
            case 'infos':
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                  const Infos(),
                ),
              );
            case 'about':
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                  const About(),
                ),
              );
            default:
              null;
          }
        },
        itemBuilder: (BuildContext bc) {
          return [
            PopupMenuItem(
              value: 'account',
              child: Row(
                children: [
                  Icon(Icons.account_balance,size: 22,color: AppColors.grisLite,),
                  const Gap(10),
                  Text(
                    "Mon compte",
                    style: AppTextStyle.buttonStyleTexte
                        .copyWith(color: AppColors.grisTexte, fontSize: 12),
                  ),
                ],
              ),
            ),
            PopupMenuItem(
              value: 'infos',
              child: Row(
                children: [
                  Icon(Icons.info,size: 22,color: AppColors.grisLite,),
                  const Gap(10),
                  Text(
                    "Infos",
                    style: AppTextStyle.buttonStyleTexte
                        .copyWith(color: AppColors.grisTexte, fontSize: 12),
                  ),
                ],
              ),
            ),
            PopupMenuItem(
              value: 'about',
              child: Row(
                children: [
                  Icon(Icons.app_blocking_outlined,size: 22,color: AppColors.grisLite,),
                  const Gap(10),
                  Text(
                    "About",
                    style: AppTextStyle.buttonStyleTexte
                        .copyWith(color: AppColors.grisTexte, fontSize: 12),
                  ),
                ],
              ),
            )
          ];
        },
        child: Row(
          children: [
            Container(
              height: 100.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [AppShadow.shadow0],
                border: Border.all(
                    color: AppColors.blancGrise,
                    width: 2,
                    strokeAlign: BorderSide.strokeAlignOutside),
              ),
              clipBehavior: Clip.hardEdge,
              child: Image.asset(
                "assets/images/im8.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Icon(
              Icons.more_vert,
              color: AppColors.blanc,
            ),
            Gap(10.w),
          ],
        ),
      ),
    ],
  );
}
