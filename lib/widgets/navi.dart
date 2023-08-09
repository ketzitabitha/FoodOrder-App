import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nalam/payment/afterpayment.dart';
import 'package:nalam/screens/home.dart';
import 'package:nalam/screens/dishes/d2.dart';
import 'package:nalam/screens/menutime.dart';
import 'package:nalam/screens/option.dart';
import 'package:nalam/screens/orders.dart';

import '../controllers/navi.dart';

class Navi extends StatelessWidget {
  NavigationController controller = Get.put(NavigationController());

  final pageOptions = [
    Home(),
    MenuTime(),
    Orders(),
    Option(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(builder: (controller) {
      return SafeArea(
        child: Scaffold(
            body: DoubleBackToCloseApp(
              snackBar: SnackBar(content: Text('Tap back again to exit app')),
              child: Obx(
                (() => IndexedStack(
                      children: pageOptions,
                      index: controller.selectedPage.value,
                    )),
              ),
            ),
            bottomNavigationBar: DotNavigationBar(
                duration: const Duration(milliseconds: 650),
                currentIndex: controller.selectedPage.value,
                unselectedItemColor: Colors.black,
                selectedItemColor: Color(0xffF5B22C),
                paddingR: const EdgeInsets.only(bottom: 10, top: 5),
                marginR: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                itemPadding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                backgroundColor: Color(0xffD9D9D9),
                borderRadius: 0,
                dotIndicatorColor: Color(0xffD9D9D9),
                onTap: (int index) {
                  controller.selectedPage.value = index;
                  controller.update();
                },
                items: [
                  DotNavigationBarItem(
                    icon: Column(
                      children: [
                        Icon(Icons.lunch_dining_outlined),
                        Text("Dishes")
                      ],
                    ),
                  ),
                  DotNavigationBarItem(
                    icon: Column(
                      children: [Icon(BootstrapIcons.book), Text("Menu")],
                    ),
                  ),
                  DotNavigationBarItem(
                    icon: Column(
                      children: [
                        Icon(BootstrapIcons.calendar2_event),
                        Text("Packages")
                      ],
                    ),
                  ),
                  DotNavigationBarItem(
                    icon: Column(
                      children: [
                        Icon(BootstrapIcons.three_dots_vertical),
                        Text("Options")
                      ],
                    ),
                  ),
                ])),
      );
    });
  }
}
