import 'package:couries_one/configs/styles/app_colors.dart';
import 'package:couries_one/configs/styles/app_decor.dart';
import 'package:couries_one/widgets/custom_app_bar.dart';
import 'package:couries_one/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class TrackDriverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.PrimaryColor,
      body: SafeArea(
        child: Column(
          children: [

            CustomAppBar(title: "Track Driver",),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color:AppColors.backgroundColor,
                    borderRadius: ContainerDecor.BorderRadius1
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                        borderRadius:BorderRadius.only(topLeft: Radius.circular(40),),
                        child: Image.asset("assets/images/big_map.png",width:Get.width,fit: BoxFit.fill,)),
                    Positioned(
                      top: Get.height*0.3,
                      left: Get.width*0.6,
                      child: Image.asset("assets/images/indicator2.png"),
                    ),
                    // Positioned(
                    //   bottom: 0,
                    //   left: 20,
                    //   right: 20,
                    //   child: FullWidthButton(
                    //     text: "Add Location",
                    //     noCurve: true,
                    //     onTap: (){
                    //       Navigator.pop(context);
                    //     },
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
