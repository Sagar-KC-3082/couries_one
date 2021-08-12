import 'package:couries_one/configs/constants/app_constants.dart';
import 'package:couries_one/configs/styles/app_colors.dart';
import 'package:couries_one/configs/styles/app_decor.dart';
import 'package:couries_one/configs/styles/custom_text_style.dart';
import 'package:couries_one/controllers/profile/profile_controller.dart';
import 'package:couries_one/views/authentication/login.dart';
import 'package:couries_one/widgets/custom_app_bar.dart';
import 'package:couries_one/widgets/custom_inkwell.dart';
import 'package:couries_one/widgets/custom_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:launch_review/launch_review.dart';
import 'package:share/share.dart';
import 'edit_profile.dart';


class ProfileScreen extends StatelessWidget {

  final ProfileController _profileController = Get.put(ProfileController());

  customBottomSheet(){
    return Container(
      color: AppColors.PrimaryColor,
      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Icon(Icons.email_outlined,color: Colors.white),
              SizedBox(width: 15,),
              CustomTextWidget("contact@yahoo.com",style: CustomTextStyle.smallBoldTextStyle1(color: Colors.white),)
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Icon(Icons.phone,color: Colors.white),
              SizedBox(width: 15,),
              CustomTextWidget("+91 8930872205",style: CustomTextStyle.smallBoldTextStyle1(color: Colors.white),)
            ],
          )
        ],
      ),
    );
  }

  Widget userInfo(BuildContext context){
    return
      Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(
                "assets/images/user3.jpg"
            ),
          ),
          SizedBox(width: 20,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextWidget(_profileController.userFirstName.value+ " " +_profileController.userLastName.value,style: CustomTextStyle.boldMediumTextStyle(),),
                SizedBox(height: 2,),
                CustomTextWidget(_profileController.email.value,style: CustomTextStyle.ultraSmallTextStyle(),),

              ],
            ),
          ),
          SizedBox(width: 20,),
          CustomInkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){return EditProfile(title: "Name",fieldInfo: ["First Name","Last Name"],);}));
                },
              child: CustomTextWidget("Edit",style: CustomTextStyle.ultraSmallBoldTextStyle(),))
        ],
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.PrimaryColor,
      body: SafeArea(
        child: Obx((){
          return Column(
            children: [
              CustomAppBar(title: "Profile",),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color:AppColors.backgroundColor,
                      borderRadius: ContainerDecor.BorderRadius1
                  ),
                  padding:  AppConstants.screenPadding,
                  child: Column(
                    children: [
                      userInfo(context),
                      SizedBox(height:30,),

                      CustomImageTextRowWidget(title: "Gender",title1:_profileController.gender.value,icon: Icon(CupertinoIcons.map_pin_ellipse,size: 20,),fieldInfo: ["Choose Gender"],),
                      CustomImageTextRowWidget(title: "Email",title1:_profileController.email.value,icon: Icon(Icons.email_outlined,size: 20),fieldInfo: ["Change Email"],),
                      CustomImageTextRowWidget(title: "Phone Number",title1:_profileController.phoneNumber.value,icon: Icon(Icons.phone_android_outlined,size: 20),fieldInfo: ["Change Number"],),
                      CustomImageTextRowWidget(title: "Change Password",title1:_profileController.gender.value,icon: Icon(Icons.lock_open,size: 20),fieldInfo: ["Current Password","New Password","New Password Again"],),
                      Divider(),
                      CustomImageTextRowWidget(title: "Refer and Earn",title1:_profileController.gender.value,icon: Icon(Icons.share,size: 20),fieldInfo: ["Current Password","New Password","New Password Again"],hideSecondTitle: true,onTap: (){Share.share("Please join our community using this link :https://play.google.com/store/apps/details?id=com.nandi.mahajodi and get Rs 20 off on first delivery");},),
                      CustomImageTextRowWidget(title: "Rate Us",title1:_profileController.gender.value,icon: Icon(Icons.star,size: 20),fieldInfo: ["Current Password","New Password","New Password Again"],hideSecondTitle: true,onTap: (){LaunchReview.launch(androidAppId: "com.nandi.mahajodi");},),
                      CustomImageTextRowWidget(title: "Contact Us",title1:_profileController.gender.value,icon: Icon(Icons.phone_callback_outlined,size: 20),fieldInfo: ["Current Password","New Password","New Password Again"],hideSecondTitle: true,onTap: (){Get.bottomSheet(customBottomSheet());},),
                      CustomImageTextRowWidget(title: "Logout",title1:_profileController.gender.value,icon: Icon(Icons.logout,size: 20),fieldInfo: ["Current Password","New Password","New Password Again"],hideSecondTitle: true,onTap: (){Get.offAll(LoginScreen());},),

                    ],
                  ),
                ),
              )


            ],
          );
        }),
      ),
    );
  }
}



class CustomImageTextRowWidget extends StatefulWidget {

  final String title;
  final String title1;
  final Icon icon;
  final List fieldInfo;
  final bool hideSecondTitle;
  final Function onTap;
  CustomImageTextRowWidget({this.title, this.icon,this.title1,this.fieldInfo,this.hideSecondTitle,this.onTap});

  @override
  _CustomImageTextRowWidgetState createState() => _CustomImageTextRowWidgetState();
}

class _CustomImageTextRowWidgetState extends State<CustomImageTextRowWidget> {

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: ()async{
          widget.hideSecondTitle == true ?
              widget.onTap():
              Navigator.push(context, MaterialPageRoute(builder: (context){return EditProfile(title: widget.title,fieldInfo: widget.fieldInfo,);}));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5,vertical: 15),
        child: Row(
          children: [
            widget.icon,
            SizedBox(width: 15,),
            CustomTextWidget(widget.title,style: CustomTextStyle.smallTextStyle1(),),
            Spacer(),
            widget.hideSecondTitle == true ? Container() :
            CustomTextWidget(widget.title1,style: CustomTextStyle.ultraSmallTextStyle(color: Colors.grey),),


          ],
        ),
      ),
    );
  }
}
