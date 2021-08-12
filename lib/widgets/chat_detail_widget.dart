import 'package:couries_one/configs/styles/app_colors.dart';
import 'package:couries_one/configs/styles/custom_text_style.dart';
import 'package:couries_one/models/chats/chat_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ChatDetailWidget extends StatelessWidget {

  final ChatDetailModel chatDetailModel ;
  ChatDetailWidget({this.chatDetailModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left :chatDetailModel.sentByMe == true ? Get.width*0.3 : 15 ,bottom: 12 , right: chatDetailModel.sentByMe == true ? 15 : Get.width*0.3 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
                color:chatDetailModel.sentByMe == true ? Colors.white : AppColors.primaryDarkBlue,
                borderRadius: BorderRadius.circular(8)
            ),

            padding:  EdgeInsets.symmetric(horizontal: 15,vertical:15),
            child: Text(chatDetailModel.message,style: CustomTextStyle.smallTextStyle1(color: chatDetailModel.sentByMe == true ? Colors.black : Colors.white),),
          ),
          SizedBox(height: 3,),
          Text("${chatDetailModel.time}    ",style: CustomTextStyle.ultraSmallTextStyle(color: Colors.grey),)
        ],
      ),
    );
  }
}
