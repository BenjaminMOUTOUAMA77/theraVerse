import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PutBackgroung extends StatefulWidget {
  final Widget child;
  const PutBackgroung({Key? key, this.child = const Text("")})
      : super(key: key);

  @override
  State<PutBackgroung> createState() => _PutBackgroungState();
}

class _PutBackgroungState extends State<PutBackgroung> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.05,
          child: Image.asset(
            "assets/images/pattern.png",
            fit: BoxFit.cover,
            height: 2400.h,
          ),
        ),
        widget.child,
      ],
    );
  }
}
