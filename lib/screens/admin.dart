import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nalam/adminnavi/adminnavi.dart';
import 'package:nalam/screens/reciveorder.dart';

class Admin extends StatelessWidget {
  Admin({super.key});

  final formKey = GlobalKey<FormState>();
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Only For Admin"),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                opacity: 100,
                image: AssetImage("asset/bg5.png"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height / 10,
                  ),
                  Container(
                      height: size.height / 7,
                      width: size.width * 0.5,
                      // color: Colors.amber,
                      child: Image.asset(
                        "asset/logo.png",
                        fit: BoxFit.fitHeight,
                      )),
                  Text(
                    "Nalam Foods.com",
                    style: TextStyle(fontSize: 22),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                "This Page is only for NalamFoods.com woner and admin. So users can't login in this. Users can only Login With Google in Login Page",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    Container(
                      height: size.height * 0.06,
                      width: size.width * 0.6,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 59, 59, 59).withOpacity(0.3),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter name";
                          }
                        },
                        controller: user,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      height: size.height * 0.06,
                      width: size.width * 0.6,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 59, 59, 59).withOpacity(0.3),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: TextFormField(
                        validator: (value) {
                          if (value == 'nalamfoods@123') {
                          } else {
                            return 'enter correct password';
                          }
                          ;
                        },
                        controller: password,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          if (user.text == "nalamfoods123@gmail.com" &&
                              password.text == "nalamfoods@123") {
                            Get.to(AdminNavi());
                          }
                        }
                      },
                      child: Text("Enter Admin Panel"),
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
