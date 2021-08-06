import 'package:couries_one/configs/constants/app_constants.dart';
import 'package:couries_one/configs/styles/app_colors.dart';
import 'package:couries_one/configs/styles/app_decor.dart';
import 'package:couries_one/widgets/custom_app_bar.dart';
import 'package:couries_one/widgets/custom_text_field.dart';
import 'package:couries_one/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AddLocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.PrimaryColor,
      body: SafeArea(
        child: Column(
          children: [

            CustomAppBar(title: "Enter Destination",),

            Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Row(
                  children: [
                    Icon(Icons.search,size: 20,),
                    SizedBox(width: 10,),
                    Expanded(child: CustomTextField1(
                      hintText: "Search Location",
                    ))
                  ],
                )
            ),
            SizedBox(height: 20,),

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
                    Positioned(
                      bottom: 0,
                      left: 20,
                      right: 20,
                      child: FullWidthButton(
                        text: "Add Location",
                        noCurve: true,
                        onTap: (){
                          Navigator.pop(context);
                        },
                      ),
                    )
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
