import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:theraverse/Screens/Terv/terv.dart';
import 'package:theraverse/Ui/Components/AllOthers/PutBackground.dart';
import 'package:theraverse/Ui/Components/AllOthers/appBar.dart';
import 'package:theraverse/Ui/Components/Box/tervBox.dart';
import 'package:theraverse/Ui/Utils/appColors.dart';
import 'package:theraverse/Ui/Utils/appShadows.dart';
import 'package:theraverse/Ui/Utils/appTextStyle.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController controller = TextEditingController();
  List<TervElement> tervList = [
    TervElement(
        image: "assets/images/vr1.png",
        nom: "VrHauteurSécurité",
        phobies: ": Acrophobie - Claustrophobie"),
    TervElement(
        image: "assets/images/vr2.jpeg",
        nom: "VrEspaceLiberté",
        phobies: ": Arachnophobie - Coulrophobie"),
    TervElement(
        image: "assets/images/vr3.jpg",
        nom: "VrArachnoAid",
        phobies: ": Trypophobie - Aérodromophobie"),
    TervElement(
        image: "assets/images/vr4.jpg",
        nom: "VrMotifApaisant",
        phobies: ": Ophiophobie - Thanatophobie"),
    TervElement(
        image: "assets/images/vr5.jpg",
        nom: "VrEspaceLiberté",
        phobies: ": Germophobie"),
    TervElement(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MakeAppBar(context),
      body: PutBackgroung(
        child: CustomScrollView(
          slivers: [
            // Élément statique en haut de la vue
            SliverAppBar(
              automaticallyImplyLeading: false,
              collapsedHeight: 250.h,
              toolbarHeight: 240.h,
              centerTitle: true,
              pinned: true,
              title: Column(
                children: [
                  const Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "<< ",
                        style: AppTextStyle.buttonStyleTexte
                            .copyWith(color: AppColors.primary, fontSize: 10),
                      ),
                      Text(
                        "TERV",
                        style: AppTextStyle.buttonStyleTexte.copyWith(
                            color: AppColors.grisTexte,
                            fontWeight: FontWeight.w600,
                            fontSize: 10.sp + 12),
                      ),
                      Text(
                        " >>",
                        style: AppTextStyle.buttonStyleTexte
                            .copyWith(color: AppColors.primary, fontSize: 10),
                      ),
                    ],
                  ),
                  const Gap(5),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.w, vertical: 1.h),
                    decoration: BoxDecoration(
                      color: AppColors.blanc,
                      boxShadow: [
                        AppShadow.shadow0,
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            shape: BoxShape.circle,
                            boxShadow: [AppShadow.shadow2],
                            border: Border.all(
                                color: AppColors.blancGrise,
                                width: 2,
                                strokeAlign: BorderSide.strokeAlignOutside),
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: Icon(
                            Icons.search,
                            color: AppColors.blanc,
                          ),
                        ),
                        const Gap(10),
                        Container(
                          width: 5,
                          height: 5,
                          color: AppColors.primary,
                        ),
                        const Gap(10),
                        Expanded(
                          child: TextField(
                            controller: controller,
                            keyboardType: TextInputType.text,
                            style: AppTextStyle.bigFilledTexte,
                            onSubmitted: (value) {},
                            cursorColor: AppColors.secondary,
                            cursorRadius: const Radius.circular(10),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(5),
                ],
              ),
            ),
            // Liste déroulante
            SliverList(
              delegate: SliverChildListDelegate([
                // Vos autres widgets ici

                // ListView.builder à l'intérieur du SingleChildScrollView
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding:
                      EdgeInsets.symmetric(vertical: 40.h, horizontal: 40.w),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 400, // Nombre de colonnes
                    mainAxisSpacing:
                        10.0, // Espacement vertical entre les éléments
                    crossAxisSpacing: 10.0,
                    childAspectRatio:
                        4 / 4, // Espacement horizontal entre les éléments
                  ),
                  itemCount:
                      tervList.length, // Nombre total d'éléments dans la grille
                  itemBuilder: (BuildContext context, int index) {
                    return TervBox(
                      nom: tervList[index].nom,
                      phobies: tervList[index].phobies,
                      image: tervList[index].image,
                      onTap: ()=>Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                          Terv(nom: tervList[index].nom,),
                        ),
                      ),
                    );
                  },
                ),

                // Vos autres widgets ici
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class TervElement {
  String nom;
  String image;
  String phobies;
  TervElement(
      {this.nom = "Vr name",
      this.image = "assets/images/im8.jpg",
      this.phobies = "Phobies"});
}
