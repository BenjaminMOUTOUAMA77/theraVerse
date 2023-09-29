import 'package:flutter/material.dart';
import 'package:adaptive_layout/adaptive_layout.dart';


initialisation() async{

  AdaptiveLayout.setBreakpoints(
    mediumScreenMinWidth: 1085,
    largeScreenMinWidth: 2405,
  );

  // createAppFolders();
}