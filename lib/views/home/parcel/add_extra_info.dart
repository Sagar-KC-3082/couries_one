import 'dart:io';
import 'package:couries_one/configs/constants/app_constants.dart';
import 'package:couries_one/configs/styles/app_colors.dart';
import 'package:couries_one/configs/styles/app_decor.dart';
import 'package:couries_one/views/home/parcel/recipient.dart';
import 'package:couries_one/widgets/custom_app_bar.dart';
import 'package:couries_one/widgets/custom_inkwell.dart';
import 'package:couries_one/widgets/custom_text_field.dart';
import 'package:couries_one/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';



class AddPackageInfoScreen extends StatefulWidget {
  @override
  _AddPackageInfoScreenState createState() => _AddPackageInfoScreenState();
}

class _AddPackageInfoScreenState extends State<AddPackageInfoScreen> {
  ImagePicker _imagePicker = ImagePicker();
  String _image1 ;
  String _image2 ;
  String _image3 ;
  @override
  Widget build(BuildContext context) {

    _selectImage(int index)async{
      var image = await _imagePicker.getImage(source: ImageSource.gallery);
      setState(() {
        if(index==1){
          _image1 = image.path;
        }
        else if(index==2){
          _image2 = image.path;
        }
        else{
          _image3 = image.path;
        }
      });
      print(index);
      print(_image1);
    }

    return Scaffold(
        backgroundColor: AppColors.PrimaryColor,
        body: SafeArea(
          child: Column(
            children: [
              CustomAppBar(title: "Add Extra Info",),

              Expanded(
                child:  Container(
                    decoration: BoxDecoration(
                        color:AppColors.backgroundColor,
                        borderRadius: ContainerDecor.BorderRadius1
                    ),
                    padding:  AppConstants.screenPadding,
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        // CustomTextField(hintText: "Enter Package Weight (Optional)",),
                        // SizedBox(height: 10,),
                        CustomTextField(hintText: "Instruction for Delivery (Optional)",maxLines: 5,),
                        SizedBox(height: 10,),
                        CustomTextField(hintText: "Additional Info (Optional)",maxLines: 5,),
                        SizedBox(height: 20,),

                        Row(
                          children: [
                            Expanded(
                              child: CustomInkWell(
                              onTap:(){
                                _selectImage(1);
                              },
                              child: Container(
                                  height: 100,
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: AppColors.backgroundColor,
                                  boxShadow: [ContainerDecor.customBoxShadow],
                                ),
                                child: _image1 == null ? Center(child: Icon(Icons.add_a_photo),) : ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.file(File(_image1),fit: BoxFit.cover),
                                )
                              ),
                            ),),
                            Expanded(
                              child: CustomInkWell(
                                onTap:(){
                                  _selectImage(2);
                                },
                                child: Container(
                                    height: 100,
                                    margin: EdgeInsets.symmetric(horizontal: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: AppColors.backgroundColor,
                                      boxShadow: [ContainerDecor.customBoxShadow],
                                    ),
                                    child: _image2 == null ? Center(child: Icon(Icons.add_a_photo),) : ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.file(File(_image2),fit: BoxFit.cover),
                                    )
                                ),
                              ),),
                            Expanded(
                              child: CustomInkWell(
                                onTap:(){
                                  _selectImage(3);
                                },
                                child: Container(
                                    height: 100,
                                    margin: EdgeInsets.symmetric(horizontal: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: AppColors.backgroundColor,
                                      boxShadow: [ContainerDecor.customBoxShadow],
                                    ),
                                    child: _image3 == null ? Center(child: Icon(Icons.add_a_photo),) : ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.file(File(_image3),fit: BoxFit.cover),
                                    )
                                ),
                              ),),
                            
                          ],
                        )

                      ],
                    )
                ),
              ),

              Container(
                color: Colors.white,
                padding: EdgeInsets.only(left:20,right: 20,top: 0,bottom: 0),
                child: FullWidthButtonWithIcon(
                  title: "Next",
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>RecipientScreen()));
                  },
                ),
              )
            ],
          ),
        )
    );
  }
}

