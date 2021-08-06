import 'package:couries_one/configs/styles/app_decor.dart';
import 'package:couries_one/configs/styles/custom_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final String hintText;
  final TextEditingController controller;
  final Function validator;
  CustomTextField({this.controller,this.hintText,this.validator});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18),
      margin: EdgeInsets.symmetric(horizontal: 0,vertical: 5),
      decoration: BoxDecoration(
        borderRadius: ContainerDecor.TextFieldBorderRadius,
        color: Colors.white,
        boxShadow: [
          ContainerDecor.customBoxShadow
        ]

      ),
      child: TextFormField(
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: CustomTextStyle.mediumTextStyle(),
            errorMaxLines: 1,
            contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 12),
            isDense: true,
            errorStyle: CustomTextStyle.ultraSmallTextStyle(color: Colors.red),
            enabledBorder: OutlineInputBorder(borderRadius: ContainerDecor.TextFieldBorderRadius,borderSide: BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(borderRadius: ContainerDecor.TextFieldBorderRadius,borderSide: BorderSide(color: Colors.white)),
            errorBorder: OutlineInputBorder(borderRadius: ContainerDecor.TextFieldBorderRadius,borderSide: BorderSide(color: Colors.white)),
            focusedErrorBorder: OutlineInputBorder(borderRadius: ContainerDecor.TextFieldBorderRadius,borderSide: BorderSide(color: Colors.white)),
        ),
      ),
    );
  }
}



class CustomTextField1 extends StatelessWidget {

  final String hintText;
  final TextEditingController controller;
  final Function validator;
  CustomTextField1({this.controller,this.hintText,this.validator});

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.symmetric(horizontal: 0,vertical: 5),

      child: TextFormField(
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: CustomTextStyle.mediumTextStyle(),
          errorMaxLines: 1,
          isDense: true,
          contentPadding: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
          errorStyle: CustomTextStyle.ultraSmallTextStyle(color: Colors.red),
          enabledBorder: OutlineInputBorder(borderRadius: ContainerDecor.TextFieldBorderRadius,borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(borderRadius: ContainerDecor.TextFieldBorderRadius,borderSide: BorderSide(color: Colors.white)),
          errorBorder: OutlineInputBorder(borderRadius: ContainerDecor.TextFieldBorderRadius,borderSide: BorderSide(color: Colors.white)),
          focusedErrorBorder: OutlineInputBorder(borderRadius: ContainerDecor.TextFieldBorderRadius,borderSide: BorderSide(color: Colors.white)),
        ),
      ),
    );
  }
}
