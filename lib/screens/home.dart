import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nalam/screens/dishes/d2.dart';
import 'package:nalam/widgets/navi.dart';

import '../widgets/cardc.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: Navi(),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 245, 227, 178),
          actions: [
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(child: Text("fssai : 22422056000516",style: TextStyle(color: Colors.black),)),
              ],
            ),
            // CircleAvatar(
            //   backgroundImage: NetworkImage(user.photoURL!),
            // ),
            SizedBox(
              width: size.width * 0.02,
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(size.height / 7),
            child: Container(
              height: size.height / 7,
              child: Column(
                children: [
                  Image.asset("asset/logo.png"),
                  Text(
                    "Nalam Foods.com",
                    style: TextStyle(fontSize: 18),
                  )
                  // Icon(Icons.dining_sharp,size: size.width*0.3,)
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/4.jpg"), fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/5.jpg"),
                          fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/snak1.jpg"),
                          fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/snak2.jpg"), fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/6.jpg"),
                          fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/7.jpg"), fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/snak3.jpg"),
                          fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/snak4.jpg"), fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/8.jpg"), fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/9.jpg"), fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/snak5.jpg"),
                          fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/snak6.jpg"), fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/10.jpg"), fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/11.jpg"), fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/snak7.jpg"),
                          fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/snak8.jpg"), fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/12.png"), fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/13.jpg"), fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/snak9.jpg"),
                          fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/snak10.jpg"), fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/14.jpg"), fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/15.jpg"), fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/16.jpg"), fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/17.jpg"),
                          fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/18.jpg"), fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/19.jpg"),
                          fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/2.jpg"), fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    cardc(
                      size: size,
                      decorationImage: DecorationImage(
                          image: AssetImage("asset/3.png"),
                          fit: BoxFit.cover),
                      text: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
