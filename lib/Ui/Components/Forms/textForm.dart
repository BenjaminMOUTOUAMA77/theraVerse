import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:theraverse/Ui/Utils/appColors.dart';
import 'package:theraverse/Ui/Utils/appTextStyle.dart';

class MyTextForm extends StatefulWidget {
  String title;
  String placeHolder;
  bool password;
  bool bigText;
  String? value;
  Function(String value)? onSumitted;
  MyTextForm(
      {Key? key,
      this.title = "Champs de saisie",
      this.placeHolder = "Vueillez saisir du texte",
      this.value,
      this.password = false,
      this.onSumitted,
      this.bigText = false})
      : super(key: key);

  @override
  State<MyTextForm> createState() => _MyTextFormState();
}

class _MyTextFormState extends State<MyTextForm> {
  late TextEditingController controller = TextEditingController();
  late bool obscurePasswordText = true;
  @override
  void initState() {
    controller = TextEditingController(text: widget.value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.text,
        style: AppTextStyle.bigFilledTexte,
        onSubmitted: widget.onSumitted,
        cursorColor: AppColors.secondary,
        cursorRadius: const Radius.circular(10),
        obscuringCharacter: "*",
        obscureText: obscurePasswordText,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.primary,
              width: 5,
            ),
          ),
          suffixIcon: widget.password
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      obscurePasswordText = !obscurePasswordText;
                    });
                  },
                  icon: obscurePasswordText
                      ? Icon(Icons.panorama_fish_eye)
                      : Icon(Icons.remove_red_eye),
                )
              : const Icon(Icons.text_fields_sharp),
          label: Text(
            widget.title,
            style: AppTextStyle.formLabelStyleTexte,
          ),
          prefixIcon: widget.password
              ? const Icon(Icons.security)
              : const Icon(Icons.text_fields_sharp),
        ),
        maxLines: widget.bigText ? 500 : 1,
        minLines: widget.bigText ? 5 : 1,
      ),
    );
  }
}
