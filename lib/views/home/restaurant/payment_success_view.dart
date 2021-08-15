import 'package:couries_one/configs/constants/app_constants.dart';
import 'package:couries_one/configs/styles/app_colors.dart';
import 'package:couries_one/configs/styles/app_decor.dart';
import 'package:couries_one/configs/styles/custom_text_style.dart';
import 'package:couries_one/views/home/parcel/order_details.dart';
import 'package:couries_one/views/home/restaurant/place_order_view.dart';
import 'package:couries_one/widgets/custom_app_bar.dart';
import 'package:couries_one/widgets/custom_inkwell.dart';
import 'package:couries_one/widgets/custom_text_widget.dart';
import 'package:couries_one/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PaymentSuccessScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.PrimaryColor,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(title: "",),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color:AppColors.backgroundColor,
                    borderRadius: ContainerDecor.BorderRadius1
                ),
                padding:  AppConstants.screenPadding,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/success.png",height: Get.height*0.15,width: Get.width*0.3,fit: BoxFit.cover,),
                    Text("Order Successful",style: CustomTextStyle.boldTextStyle(),),
                    SizedBox(height: 10,),
                    CustomTextWidget("Order ID : #65222",style: CustomTextStyle.smallBoldTextStyle1(color: Colors.grey)) ,
                    SizedBox(height: 20,),

                    // CustomTextWidget("Rate Driver",style: CustomTextStyle.smallBoldTextStyle1(),),
                    // SizedBox(height: 10,),
                    // Row(
                    //   mainAxisSize: MainAxisSize.min,
                    //   children: [
                    //     CustomStar(),CustomStar(),CustomStar(),CustomStar(),CustomStar(),
                    //   ],
                    // ),
                    // SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: FullWidthButtonWithIcon(
                        title: "Order Details",
                        borderRadius: BorderRadius.circular(15),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context){return OrderDetailsScreen();}));
                        },
                      ),
                    )


                  ],
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}


class CustomStar extends StatefulWidget {
  @override
  _CustomStarState createState() => _CustomStarState();
}

class _CustomStarState extends State<CustomStar> {

  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: (){
        setState(() {
           _isTapped = !_isTapped;
        });
      },
      child:  Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: _isTapped ? Icon(Icons.star,color: AppColors.PrimaryColor,) : Icon(Icons.star_border,color: Colors.grey,)
      ),
    );
  }
}

