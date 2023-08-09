import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:nalam/controllers/google.dart';
import 'package:nalam/screens/admin.dart';

class Login extends StatelessWidget {
  Login({super.key});

  GoogleSignInProvider con = Get.put(GoogleSignInProvider());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  opacity: 150,
                  image: AssetImage("asset/bg5.png"),
                  fit: BoxFit.cover)),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Nalam Foods.",
                        style: TextStyle(fontSize: 22),
                      ),
                      InkWell(
                          onTap: () {
                            Get.to(Admin());
                          },
                          child: Text(
                            "com",
                            style: TextStyle(fontSize: 22),
                          ))
                    ],
                  )
                ],
              ),
              SizedBox(
                height: size.height / 13,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Welcome,",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.002,
              ),
              Text(
                "We are providing top class Pure Veg Food",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "Choose healthy. Be strong. Live long.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: size.height * 0.09,
              ),
              InkWell(
                onTap: () {
                  // final provider = Provider.of<GoogleSignInProvider>(context,listen: false);
                  // provider.googleLogin();
                  con.googleLogin();
                },
                child: Container(
                  height: size.height / 15,
                  width: size.width * 0.6,
                  color: Color.fromARGB(255, 59, 59, 59).withOpacity(0.3),
                  child: Row(
                    children: [
                      Image.asset("asset/glogo.png"),
                      Text(
                        "SignIn with Google",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
