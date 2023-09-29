import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:theraverse/Screens/Terv/Niveau/niveau.dart';
import 'package:theraverse/Ui/Components/AllOthers/PutBackground.dart';
import 'package:theraverse/Ui/Components/AllOthers/appBar.dart';
import 'package:theraverse/Ui/Components/Box/niveauBox.dart';
import 'package:theraverse/Ui/Components/Buttons/AppButton.dart';
import 'package:theraverse/Ui/Utils/appColors.dart';
import 'package:theraverse/Ui/Utils/appTextStyle.dart';

class Terv extends StatefulWidget {
  String nom;
  Terv({Key? key, this.nom = "Nom de Terv"}) : super(key: key);

  @override
  State<Terv> createState() => _TervState();
}

class _TervState extends State<Terv> {
  TextEditingController controller = TextEditingController();
  List<Niveau> niveauList = [
    Niveau(
        image: "assets/images/vr5.jpg",
        nom: "Niveau1",
        indication: ": Découverte  #Très Facile"),
    Niveau(
        image: "assets/images/vr4.jpg", nom: "Niveau2", indication: ": Facile"),
    Niveau(
        image: "assets/images/vr3.jpg",
        nom: "Niveau3",
        indication: ": Challenge"),
    Niveau(
        image: "assets/images/vr2.jpeg",
        nom: "Niveau4",
        indication: ": Difficile"),
    Niveau(
        image: "assets/images/vr1.png",
        nom: "Niveau5",
        indication: ": Très difficile"),
    Niveau(),
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
                  AppButton(
                    title: widget.nom,
                    onTap: () {},
                    filledStyle: true,
                  ),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "<< ",
                        style: AppTextStyle.buttonStyleTexte
                            .copyWith(color: AppColors.secondary, fontSize: 10),
                      ),
                      Text(
                        "Niveaux",
                        style: AppTextStyle.buttonStyleTexte.copyWith(
                            color: AppColors.grisTexte,
                            fontWeight: FontWeight.w600,
                            fontSize: 10.sp + 12),
                      ),
                      Text(
                        " >>",
                        style: AppTextStyle.buttonStyleTexte
                            .copyWith(color: AppColors.secondary, fontSize: 10),
                      ),
                    ],
                  ),
                  const Gap(5),
                ],
              ),
            ),
            // Liste déroulante
            SliverList(
              delegate: SliverChildListDelegate([
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
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
                  itemCount: niveauList
                      .length, // Nombre total d'éléments dans la grille
                  itemBuilder: (BuildContext context, int index) {
                    return NiveauBox(
                      nom: niveauList[index].nom,
                      indication: niveauList[index].indication,
                      image: niveauList[index].image,
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => TervNiveau(nom: niveauList[index].nom,),
                        ),
                      ),
                    );
                  },
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class Niveau {
  String nom;
  String image;
  String indication;
  Niveau(
      {this.nom = "Niveau",
      this.image = "assets/images/im8.jpg",
      this.indication = "Impossible"});
}
