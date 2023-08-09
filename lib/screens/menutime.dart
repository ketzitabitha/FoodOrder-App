import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nalam/screens/breakfast.dart';
import 'package:nalam/screens/dinner.dart';
import 'package:nalam/screens/lunch.dart';
import 'package:nalam/screens/option/dailymenu.dart';

class MenuTime extends StatelessWidget {
  const MenuTime({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 245, 227, 178),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(size.height / 7),
          child: Container(
            height: size.height / 6,
            child: Column(
              children: [
                Image.asset("asset/logo.png"),
                Text(
                  "Nalam Foods.com",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("asset/bg5.png"), fit: BoxFit.cover)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Container(
                height: size.height / 4.5,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: InkWell(
                        onTap: () {
                          Get.to(BreakFast());
                        },
                        child: Container(
                          height: size.height / 4.5,
                          width: size.width * 0.3,
                          decoration: BoxDecoration(
                              // color: Color.fromARGB(255, 245, 227, 178),
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  // opacity: 150,
                                  image: AssetImage("asset/mor.jpg"),
                                  fit: BoxFit.cover)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "காலை உணவு",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "(Break Fast)",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(Lunch());
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          height: size.height / 4.5,
                          width: size.width * 0.3,
                          decoration: BoxDecoration(
                              // color: Color.fromARGB(255, 245, 227, 178),
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  opacity: 200,
                                  image: AssetImage("asset/luntym.png"),fit: BoxFit.cover)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "மதிய உணவு",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("(Lunch)"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(Dinner());
                      },
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          height: size.height / 4.5,
                          width: size.width * 0.3,
                          decoration: BoxDecoration(
                              // color: Color.fromARGB(255, 245, 227, 178),
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  // opacity: 150,
                                  image: AssetImage("asset/nyt.jpg"),fit: BoxFit.cover)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "இரவு உணவு",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "(Dinner)",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
