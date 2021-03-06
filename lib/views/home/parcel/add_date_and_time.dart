import 'package:couries_one/configs/constants/app_constants.dart';
import 'package:couries_one/configs/styles/app_colors.dart';
import 'package:couries_one/configs/styles/app_decor.dart';
import 'package:couries_one/configs/styles/custom_text_style.dart';
import 'package:couries_one/views/home/parcel/order_size.dart';
import 'package:couries_one/widgets/custom_app_bar.dart';
import 'package:couries_one/widgets/custom_text_widget.dart';
import 'package:couries_one/widgets/date_time_widget.dart';
import 'package:couries_one/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AddDateTimeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.PrimaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            CustomAppBar(title: "Set Date & Time",),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color:AppColors.backgroundColor,
                    borderRadius: ContainerDecor.BorderRadius1
                ),
                padding:  AppConstants.screenPadding,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    CustomTextWidget("Pickup Date and Time",style: CustomTextStyle.smallBoldTextStyle1(),),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        CustomTextWidget("11 Feb 2021",style: CustomTextStyle.smallTextStyle1(color: Colors.grey),),
                        Spacer(),
                        Icon(Icons.calendar_today,size: 20,color: Colors.grey,)
                      ],
                    ),
                    SizedBox(height: 20,),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          DateTimeSingleWidget(date: "11",day: "Mon",selected: true,),
                          DateTimeSingleWidget(date: "12",day: "Tue",selected: false,),
                          DateTimeSingleWidget(date: "13",day: "Wed",selected: false,),
                          DateTimeSingleWidget(date: "14",day: "Thrus",selected: false,),
                          DateTimeSingleWidget(date: "15",day: "Wed",selected: false,),
                          DateTimeSingleWidget(date: "16",day: "Fri",selected: false,),
                          DateTimeSingleWidget(date: "17",day: "Sar",selected: false,),
                          DateTimeSingleWidget(date: "18",day: "Sun",selected: false,),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),

                    Row(
                      children: [
                        CustomTextWidget("Pickup Time",style: CustomTextStyle.smallTextStyle1(color: Colors.grey),),
                        SizedBox(width: 25,),
                        Container(
                            width: 120,
                            child: CustomDropDown())
                      ],
                    ),
                    SizedBox(height:Get.height*0.07,),

                    CustomTextWidget("Drop off Date and Time",style: CustomTextStyle.smallBoldTextStyle1(),),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        CustomTextWidget("11 Feb 2021",style: CustomTextStyle.smallTextStyle1(color: Colors.grey),),
                        Spacer(),
                        Icon(Icons.calendar_today,size: 20,color: Colors.grey,)
                      ],
                    ),
                    SizedBox(height: 20,),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          DateTimeSingleWidget(date: "11",day: "Mon",selected: false,),
                          DateTimeSingleWidget(date: "12",day: "Tue",selected: false,),
                          DateTimeSingleWidget(date: "13",day: "Wed",selected: true,),
                          DateTimeSingleWidget(date: "14",day: "Thrus",selected: false,),
                          DateTimeSingleWidget(date: "15",day: "Wed",selected: false,),
                          DateTimeSingleWidget(date: "16",day: "Fri",selected: false,),
                          DateTimeSingleWidget(date: "17",day: "Sar",selected: false,),
                          DateTimeSingleWidget(date: "18",day: "Sun",selected: false,),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),

                    Row(
                      children: [
                        CustomTextWidget("Pickup Time",style: CustomTextStyle.smallTextStyle1(color: Colors.grey),),
                        SizedBox(width: 25,),
                        Container(
                            width: 120,
                            child: CustomDropDown())
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: FullWidthButtonWithIcon(
                title: "Next",
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderSizeScreen()));
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}



class CustomDropDown extends StatefulWidget {
  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {

  String _selectedItem = "10:30 Am";

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        border: InputBorder.none
      ),
        items: [
          DropdownMenuItem(child: CustomTextWidget("10:30 Am",style: CustomTextStyle.smallTextStyle1(),),value: "10:30 Am",),
          DropdownMenuItem(child: CustomTextWidget("11:30 Am",style: CustomTextStyle.smallTextStyle1(),),value: "11:30 Am",),
          DropdownMenuItem(child: CustomTextWidget("12:30 Am",style: CustomTextStyle.smallTextStyle1(),),value: "12:30 Am",),
          DropdownMenuItem(child: CustomTextWidget("01:30 Pm",style: CustomTextStyle.smallTextStyle1(),),value: "01:30 Pm",)
        ],
        onChanged: (value){
          setState(() {
            _selectedItem = value;
          });
        },
        value: _selectedItem,
    );
  }
}

