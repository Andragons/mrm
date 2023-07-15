// ignore_for_file: prefer_const_constructors

import 'package:movie/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:movie/app/modules/dashboard/views/history_view.dart';
import 'package:movie/app/modules/dashboard/views/home_view.dart';
import 'package:movie/app/modules/dashboard/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import '../../profile/views/profile_view.dart'; 

class DashboardView extends StatelessWidget {
  final TextStyle unselectedLabelStyle =
      TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 12);

  final TextStyle selectedLabelStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  buildBottomNavigationMenu(context, dashboardController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 80,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: dashboardController.changeTabIndex,
            currentIndex: dashboardController.tabIndex.value,
            backgroundColor: Colors.white,
            unselectedItemColor: Color.fromRGBO(187, 195, 206, 1),
            selectedItemColor: Color.fromRGBO(69, 82, 203, 1),
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.home,
                    size: 20.0,
                  ),
                ),
                label: 'Home',
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.history,
                    size: 20.0,
                  ),
                ),
                label: 'History',
                backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              ),
              // BottomNavigationBarItem(
              //   icon: Container(
              //     margin: EdgeInsets.only(bottom: 7),
              //     child: Icon(
              //       Icons.person,
              //       size: 20.0,
              //     ),
              //   ),
              //   label: 'Profile',
              //   backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              // ),
              
              // BottomNavigationBarItem(
              //   icon: Container(
              //     margin: EdgeInsets.only(bottom: 7),
              //     child: Icon(
              //       Icons.settings,
              //       size: 20.0,
              //     ),
              //   ),
              //   label: 'Settings',
              //   backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              // ),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    final DashboardController landingPageController =
        Get.put(DashboardController(), permanent: false);
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar:
          buildBottomNavigationMenu(context, landingPageController),
      body: Obx(() => IndexedStack(
            index: landingPageController.tabIndex.value,
            children: [
              HomeView(),
              HistoryView(),
              // ProfileView()
              // UserDetailPage()
              // ExplorePage(),
              // PlacesPage(),
              // SettingsPage(),
            ],
          )),
    ));
  }
}
