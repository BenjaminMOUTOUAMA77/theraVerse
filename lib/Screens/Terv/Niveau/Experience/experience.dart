import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:theraverse/Ui/Components/AllOthers/PutBackground.dart';
import 'package:theraverse/Ui/Utils/appColors.dart';
import 'package:theraverse/Ui/Utils/appTextStyle.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/services.dart';


class ExperienceVR extends StatefulWidget {
  const ExperienceVR({Key? key}) : super(key: key);
  @override
  State<ExperienceVR> createState() => _ExperienceVRState();
}

class _ExperienceVRState extends State<ExperienceVR> {


  int pageLoad = 0;

  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {},
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    //..loadFile("/storage/emulated/0/Documents/webLocal/index.html");
    //..loadFlutterAsset("assets/webPage/index.html");
    ..loadRequest(Uri.parse('https://trusting-water-tricorne.glitch.me/'),);

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []); // Masquer la barre de statut
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values); // Restaurer la barre de statut
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    controller.setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          if (mounted) {
            setState(() {
              pageLoad = progress;
              debugPrint("Progression : " + progress.toString() + " %");
            });
          } else {
            setState(() {
              pageLoad = progress;
              debugPrint("Progression : " + progress.toString() + " %");
            });
          }
        },
      ),
    );

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PutBackgroung(
            child: WebViewWidget(controller: controller),
          ),
          if(pageLoad<100)
            SizedBox(
              width: 600.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("$pageLoad %",style: AppTextStyle.buttonStyleTexte.copyWith(color: AppColors.secondary),),
                  Gap(20.h),
                  LinearProgressIndicator(
                    semanticsLabel: "Chargement",semanticsValue: "Chargement",
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
