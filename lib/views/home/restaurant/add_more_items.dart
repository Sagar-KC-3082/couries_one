import 'package:couries_one/configs/constants/app_constants.dart';
import 'package:couries_one/configs/styles/app_colors.dart';
import 'package:couries_one/configs/styles/app_decor.dart';
import 'package:couries_one/views/home/restaurant/confirm_info.dart';
import 'package:couries_one/views/home/restaurant/food_info.dart';
import 'package:couries_one/widgets/custom_app_bar.dart';
import 'package:couries_one/widgets/full_width_button.dart';
import 'package:flutter/material.dart';

class AddMoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.PrimaryColor,
        body: SafeArea(
            child: Column(
              children: [
              CustomAppBar(title: "Add More Items",),
              Expanded(
                child: Container(
                decoration: BoxDecoration(
                  color:AppColors.backgroundColor,
                  borderRadius: ContainerDecor.BorderRadius1
                ),
                padding:  AppConstants.screenPadding,
                child: ListView(
                  children: [
                    CustomAddItemWidget(),
                    CustomAddItemWidget(),
                    CustomAddItemWidget(),
                    CustomAddItemWidget(),
                    CustomAddItemWidget(),
                    CustomAddItemWidget(),
                    CustomAddItemWidget(),
                    CustomAddItemWidget(),
                    CustomAddItemWidget(),

                  ],
                )
               )
              ),

                Container(
                  color: AppColors.backgroundColor,
                  padding: EdgeInsets.only(left:20,right: 20,top: 0,bottom: 0),
                  child: FullWidthButtonWithIcon(
                    title: "NEXT",
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                )
            ])
        )
    );
  }
}
