import 'package:couries_one/configs/styles/app_colors.dart';
import 'package:couries_one/views/home/home_screen.dart';
import 'package:couries_one/views/home/parcel/order_details.dart';
import 'package:couries_one/views/notification/notification_main_screen.dart';
import 'package:couries_one/views/profile/profile_mainscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';


class BottomNavScreen extends StatelessWidget {

  PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: false, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      navBarStyle: NavBarStyle.simple, // Choose the nav bar style with this property.
    );
  }

  List<Widget> _buildScreens() {
    return [
      // SnappyFoodHomeScreen(),
      // SnappyClassifiedNotificationView(),
      HomeScreen(),
      OrderDetailsScreen(hideNextButton: true,showMessageIcon: true,),
      NotificationScreen(),
      ProfileScreen()
    ];
  }


  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.house,size: 22,),
          title: ("Home"),
          activeColor: AppColors.PrimaryColor,
          inactiveColor: AppColors.PrimaryColor,
          titleStyle: TextStyle(fontFamily: "PoppinsRegular",fontSize: 12)
      ),
      PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.timer,size: 22,),
          title: ("My Orders"),
          activeColor: AppColors.PrimaryColor,
          inactiveColor: AppColors.PrimaryColor,
          titleStyle: TextStyle(fontFamily: "PoppinsRegular",fontSize: 12)
      ),
      PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.bell,size: 22,),
          title: ("Notification"),
          activeColor: AppColors.PrimaryColor,
          inactiveColor: AppColors.PrimaryColor,
          titleStyle: TextStyle(fontFamily: "PoppinsRegular",fontSize: 12)
      ),
      PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.person_crop_circle,size: 22,),
          title: ("Profile"),
          activeColor: AppColors.PrimaryColor,
          inactiveColor: AppColors.PrimaryColor,
          titleStyle: TextStyle(fontFamily: "PoppinsRegular",fontSize: 12)
      ),
    ];
  }

}
