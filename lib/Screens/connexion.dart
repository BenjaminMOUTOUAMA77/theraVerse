import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:theraverse/Screens/home.dart';
import 'package:theraverse/Ui/Components/AllOthers/PutBackground.dart';
import 'package:theraverse/Ui/Components/Buttons/AppButton.dart';
import 'package:theraverse/Ui/Components/Forms/textForm.dart';
import 'package:theraverse/Ui/Utils/appColors.dart';
import 'package:theraverse/Ui/Utils/appShadows.dart';
import 'package:theraverse/Ui/Utils/appTextStyle.dart';

class Connexion extends StatefulWidget {
  const Connexion({Key? key}) : super(key: key);

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Center(child: Text("Connexion", style: AppTextStyle.buttonStyleTexte.copyWith(fontSize: 25.sp+12),)),
      ),
      body: SingleChildScrollView(
        child: PutBackgroung(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  Gap(200.h),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40.w,vertical: 100.h),
                    decoration: BoxDecoration(
                      color: AppColors.blanc,
                      boxShadow: [
                        AppShadow.shadow0,
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset("assets/images/TheraVerseSF.png",),
                        Gap(50.h),
                        MyTextForm(title: "Identifiant",),
                        Gap(40.h),
                        MyTextForm(title: "Mot de passe",password: true,),
                        Gap(80.h),
                        AppButton(title: "Valider",onTap: ()=>Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                            const Home(),
                          ),
                        ),),
                        Gap(120.h),
                        Column(
                          children: [
                            const Text("Si vous n'avez pas d'identifiants, veuillez demander à l'agent de santé à votre charge de vous en procurez.",textAlign: TextAlign.center,),
                            const Gap(10),
                            Text("Cordialement,",style: TextStyle(fontWeight: FontWeight.w900,color: AppColors.primary),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
