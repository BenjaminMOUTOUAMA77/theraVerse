import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:theraverse/Ui/Components/AllOthers/PutBackground.dart';
import 'package:theraverse/Ui/Components/AllOthers/appBar.dart';
import 'package:theraverse/Ui/Utils/appColors.dart';
import 'package:theraverse/Ui/Utils/appShadows.dart';
import 'package:theraverse/Ui/Utils/appTextStyle.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MakeAppBar(context),
      body: PutBackgroung(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
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
                Gap(30.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 10,
                        width: 6,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      Gap(10.w),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.w, vertical: 10.h),
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Emmanuel NONDAWADA",
                                style: AppTextStyle.buttonStyleTexte
                                    .copyWith(fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Gap(10.w),
                      Container(
                        height: 10,
                        width: 6,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Statut : ",
                      style: AppTextStyle.filedTexte.copyWith(
                          fontSize: 12.sp + 12, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Patient",
                      style: AppTextStyle.filedTexte
                          .copyWith(fontSize: 12.sp + 12),
                    ),
                  ],
                ),
                Gap(50.h),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  decoration: BoxDecoration(color: AppColors.blanc),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 20.h),
                        alignment: Alignment.center,
                        color: AppColors.blancGrise,
                        child: Text("À votre Charge"),
                      ),
                      Gap(50.h),
                      Text(
                        "Oscard ZOHOUNGBOGBO",
                        style: AppTextStyle.bigFilledTexte.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColors.primary),
                      ),
                      Text("Psychologue Clinicien"),
                      Gap(50.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.blanc,
                                      boxShadow: [AppShadow.shadow1],
                                    ),
                                    child: Icon(
                                      Icons.phone_forwarded,
                                      color: AppColors.primary,
                                      size: 20,
                                    )),
                                Gap(20.w),
                                Text(
                                  "+229 957 456 32",
                                  style: AppTextStyle.filedTexte,
                                ),
                              ],
                            ),
                            Gap(20.h),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.blanc,
                                      boxShadow: [AppShadow.shadow1],
                                    ),
                                    child: Icon(
                                      Icons.mail,
                                      color: AppColors.primary,
                                      size: 20,
                                    )),
                                Gap(20.w),
                                Text(
                                  "oscarzohoungbogbo@gmail.com",
                                  style: AppTextStyle.filedTexte,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Gap(50.h),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
