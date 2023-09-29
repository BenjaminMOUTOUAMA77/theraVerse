import 'package:flutter/material.dart';
import 'package:theraverse/Ui/Components/AllOthers/PutBackground.dart';
import 'package:theraverse/Ui/Components/AllOthers/appBar.dart';

class ExperienceVR extends StatefulWidget {
  const ExperienceVR({Key? key}) : super(key: key);

  @override
  State<ExperienceVR> createState() => _ExperienceVRState();
}

class _ExperienceVRState extends State<ExperienceVR> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MakeAppBar(context),
      body: PutBackgroung(
        child: Container(),
      ),
    );
  }
}
