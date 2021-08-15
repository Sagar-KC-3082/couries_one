import 'package:couries_one/configs/constants/app_constants.dart';
import 'package:couries_one/configs/styles/app_colors.dart';
import 'package:couries_one/configs/styles/app_decor.dart';
import 'package:couries_one/configs/styles/custom_text_style.dart';
import 'package:couries_one/models/chats/chat_detail_model.dart';
import 'package:couries_one/models/chats/chat_list_model.dart';
import 'package:couries_one/views/chat/chat_detail_screen_view.dart';
import 'package:couries_one/views/home/parcel/order_payment_view.dart';
import 'package:couries_one/views/home/parcel/track_driver.dart';
import 'package:couries_one/widgets/custom_app_bar.dart';
import 'package:couries_one/widgets/custom_inkwell.dart';
import 'package:couries_one/widgets/custom_text_widget.dart';
import 'package:couries_one/widgets/full_width_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';


class OrderDetailsScreen extends StatelessWidget {

  final bool hideNextButton;
  final bool showMessageIcon;
  OrderDetailsScreen({this.hideNextButton,this.showMessageIcon});

  final List<ChatDetailModel> _messageList = [
    ChatDetailModel(time: "10 : 34" , sentByMe: true , message: "hello, doctor, i believe i have the coronavirus as i am experiencing mild symptoms, what do i do?"),
    ChatDetailModel(time: "12 : 01" , sentByMe: false , message: "I’m here for you, don’t worry. What symptoms are you experiencing?"),
    ChatDetailModel(time: "4 : 12" , sentByMe: true , message: "fever,dry cough ,tiredness, sore throat"),
    ChatDetailModel(time: "7 : 45" , sentByMe: false , message: "oh so sorry about that. do you have any underlying diseases?"),
    ChatDetailModel(time: "7 : 56" , sentByMe: false , message: "hello, doctor, i believe i have the coronavirus as i am experiencing mild symptoms, what do i do?"),
    ChatDetailModel(time: "9 : 03" , sentByMe: true , message: "hello, doctor, i believe i have the coronavirus as i am experiencing mild symptoms, what do i do?"),
    ChatDetailModel(time: "10 : 23" , sentByMe: true , message: "hello, doctor, i believe i have the coronavirus as i am experiencing mild symptoms, what do i do?"),
    ChatDetailModel(time: "12 : 01" , sentByMe: false , message: "I’m here for you, don’t worry. What symptoms are you experiencing?"),
    ChatDetailModel(time: "4 : 12" , sentByMe: true , message: "fever \n dry cough \n tiredness \n sore throat"),
    ChatDetailModel(time: "7 : 45" , sentByMe: false , message: "oh so sorry about that. do you have any underlying diseases?"),
  ];

   final ChatListModel _userInfo = ChatListModel(name: "Virat",lastMessage: "Hello Sir, Please drop the price",date: "June 22",imageUrl: "assets/images/user.jpg");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.PrimaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            CustomAppBar(title: "Order Details",),

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
                    Container(
                      decoration: BoxDecoration(
                        color:AppColors.primaryDarkBlue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/svgs/time.svg"),
                          SizedBox(width: 30,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomTextWidget(" 2021",style: CustomTextStyle.smallBoldTextStyle1(color: Colors.white,),),
                              SizedBox(height:2),
                              CustomTextWidget("Fri, Feb 12",style: CustomTextStyle.boldMediumTextStyle(color: Colors.white),),
                              SizedBox(height: 5,),
                              CustomTextWidget("11:12 PM",style: CustomTextStyle.boldMediumTextStyle(color: Colors.white),)
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),

                    Row(
                      children: [
                        Container(height:15,width: 15, child: Icon(Icons.circle,color: Colors.grey,size: 15,)),
                        SizedBox(width: 8,),
                        CustomTextWidget("Shar Tau Tok",style:  CustomTextStyle.smallTextStyle1(color: Colors.grey),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(height:15,width: 15,child:Image.asset("assets/images/location1.png")),
                        SizedBox(width: 8,),
                        CustomTextWidget("Fanling",style:  CustomTextStyle.smallTextStyle1(color: Colors.grey))
                      ],
                    ),

                     SizedBox(height: 10,),
                     showMessageIcon == true ? Column(
                      children: [
                        Divider(),
                        CustomInkWell(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder:(context){return ChatDetailScreen(messageList: _messageList,chatListModel: _userInfo,);}));
                          },
                          child:  Row(
                            children: [
                              Icon(Icons.message_outlined,color: Colors.blue,size: 15,),
                              SizedBox(width: 8,),
                              CustomTextWidget("Message Driver",style:  CustomTextStyle.smallTextStyle1(color: Colors.blue))
                            ],
                          ),
                        ),
                        SizedBox(height: 5,),

                        CustomInkWell(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder:(context){return TrackDriverScreen();}));
                          },
                          child:  Row(
                            children: [
                              Icon(Icons.location_on,color: Colors.blue,size: 15,),
                              SizedBox(width: 8,),
                              CustomTextWidget("Track Driver Location",style:  CustomTextStyle.smallTextStyle1(color: Colors.blue))
                            ],
                          ),
                        ),

                        SizedBox(height: 10,),
                      ],
                    ) : Container(),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.grey.withOpacity(0.2),offset: Offset(3,3), blurRadius: 5,spreadRadius: 3),
                          ]
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 12),
                      margin: EdgeInsets.symmetric(vertical: 12,horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomTextWidget("Recipient info",style: CustomTextStyle.smallBoldTextStyle1(),),
                              Spacer(),
                              CustomTextWidget("#25556",style: CustomTextStyle.smallBoldTextStyle1(),)
                            ],
                          ),
                          SizedBox(height: 10,),

                          CustomTextWidget("Himalayan Das",style: CustomTextStyle.ultraSmallTextStyle(),),
                          SizedBox(height: 3,),
                          SizedBox(height: 3,),
                          CustomTextWidget("1+ 00000 00000",style: CustomTextStyle.ultraSmallTextStyle(),),
                          SizedBox(height: 3,),
                          CustomTextWidget("A Block 2nd flow Room 251",style: CustomTextStyle.ultraSmallTextStyle(),)
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),

                    CustomAddlocationWidget(icon: Icon(Icons.circle,color: AppColors.PrimaryColor,size: 20,),location: "   24, Ocean avenue",),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(height: 20,width: 1,color: Colors.black,margin: EdgeInsets.only(left:30),)),
                    CustomAddlocationWidget(icon: Icon(Icons.arrow_drop_down,color: Colors.black,size: 30,),location: "GH, 15 NY,USA",),
                    SizedBox(height: 30,),


                    Divider(),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        CustomTextWidget("Moving Cart",style: CustomTextStyle.smallBoldTextStyle1(),),
                        Spacer(),
                        CustomTextWidget("\$20",style: CustomTextStyle.smallBoldTextStyle1(color: Colors.grey),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        CustomTextWidget("Estimated Fare",style: CustomTextStyle.smallBoldTextStyle1(),),
                        Spacer(),
                        CustomTextWidget("\$124.67",style: CustomTextStyle.boldTextStyle(color: AppColors.PrimaryColor),)                ],
                    ),

                    SizedBox(height: 20,),

                    hideNextButton == true ?
                    Container():
                    FullWidthButtonWithIcon(
                      title: "Next",
                      onTap: (){
                        FocusScope.of(context).unfocus();
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderPaymentScreen()));
                        },
                    )
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}




class CustomAddlocationWidget extends StatelessWidget {

  final String location;
  final Icon icon;
  CustomAddlocationWidget({this.location,this.icon});

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.symmetric(horizontal:10,vertical:0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.2),offset: Offset(1,3), blurRadius: 5,spreadRadius: 3),
          ]
      ),
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      child: Row(
        children: [
          icon,
          SizedBox(width: 10,),
          Expanded(child:CustomTextWidget(location,style: CustomTextStyle.smallTextStyle1(),)),

        ],
      ),
    );
  }
}