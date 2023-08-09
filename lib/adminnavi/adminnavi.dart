import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:nalam/allorders.dart';
import 'package:nalam/controllers/navi.dart';
import 'package:nalam/screens/admin.dart';
import 'package:nalam/screens/reciveorder.dart';

class AdminNavi extends StatelessWidget {
  NavigationController controller = Get.put(NavigationController());

  final pageOptions = [
    ReciveOrder(),
    AllOrders(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(builder: (controller) {
      return SafeArea(
        child: Scaffold(
            body:
            //  DoubleBackToCloseApp(
              // snackBar: SnackBar(content: Text('Tap back again to exit app')),
              // child:
               Obx(
                (() => IndexedStack(
                      children: pageOptions,
                      index: controller.selectedPage.value,
                    )),
              ),
            // ),
            bottomNavigationBar: DotNavigationBar(
                duration: const Duration(milliseconds: 650),
                currentIndex: controller.selectedPage.value,
                unselectedItemColor: Colors.black,
                selectedItemColor: Color(0xffF5B22C),
                paddingR: const EdgeInsets.only(bottom: 10, top: 5),
                marginR: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                itemPadding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 16),
                backgroundColor: Color(0xffD9D9D9),
                borderRadius: 0,
                onTap: (int index) {
                  controller.selectedPage.value = index;
                  controller.update();
                },
                items: [
                  DotNavigationBarItem(icon: FaIcon(FontAwesomeIcons.bowlFood)),
                  DotNavigationBarItem(icon: Icon(Icons.dinner_dining)),
                ]
              )
            ),
      );
    });
  }
}