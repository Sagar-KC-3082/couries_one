import 'package:couries_one/configs/styles/app_colors.dart';
import 'package:couries_one/configs/styles/custom_text_style.dart';
import 'package:couries_one/widgets/custom_inkwell.dart';
import 'package:couries_one/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {

  final String title;
  final bool hideBackButton;
  final bool imageUrl;
  CustomAppBar({this.title,this.hideBackButton,this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.PrimaryColor,
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
      child: Row(
        children: [
          hideBackButton == true?
          Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              width: 50,
              child: Icon(Icons.arrow_back,color: AppColors.PrimaryColor,size: 20,)
          ):
          CustomInkWell(
            onTap: (){
              Navigator.pop(context);
              },
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                width: 50,
                child: Icon(Icons.arrow_back,color: Colors.white,size: 20,)
            ),
          ),


          Spacer(),
          imageUrl == true ?
          Image.asset("assets/images/logo1.png",height: 30,width: 70,):
          CustomTextWidget(title,style: CustomTextStyle.boldTextStyle(color: Colors.white)),
          Spacer(),
          Container(width: 50,)
        ],
      )
    );
  }
}
