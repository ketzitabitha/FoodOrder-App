import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:nalam/screens/option/about.dart';
import 'package:nalam/screens/option/bulkorder.dart';
import 'package:nalam/screens/option/certificate.dart';
import 'package:nalam/screens/option/dailymenu.dart';

import '../controllers/google.dart';

class Option extends StatelessWidget {
  Option({super.key});

  GoogleSignInProvider con = Get.put(GoogleSignInProvider());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
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
                  // Icon(Icons.dining_sharp,size: size.width*0.3,)
                ],
              ),
            ),
          ),
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
                // SizedBox(
                //   height: size.height * 0.02,
                // ),
                // InkWell(
                //   onTap: () {
                //     Get.to(BulkOrder());
                //   },
                //   child: Container(
                //     height: size.height * 0.07,
                //     color: Color.fromARGB(255, 59, 59, 59).withOpacity(0.3),
                //     child: Padding(
                //       padding: EdgeInsets.only(left: size.width * 0.03),
                //       child: Row(
                //         children: [
                //           FaIcon(
                //             FontAwesomeIcons.bowlFood,
                //             color: Color.fromARGB(255, 177, 156, 87),
                //           ),
                //           SizedBox(
                //             width: size.width * 0.02,
                //           ),
                //           Text(
                //             "Bulk Orders",
                //             style: TextStyle(fontSize: 20),
                //           )
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                // SizedBox(height: size.height*0.02,),
                // InkWell(
                //   onTap: () {
                //     Get.to(Certificate());
                //   },
                //   child: Container(
                //     height: size.height*0.07,
                //    color: Color.fromARGB(255, 59, 59, 59).withOpacity(0.3),
                //     child: Padding(
                //       padding:  EdgeInsets.only(left: size.width*0.03),
                //       child: Row(
                //         children: [
                //           FaIcon(FontAwesomeIcons.certificate,color: Color.fromARGB(255, 177, 156, 87),),
                //         SizedBox(width: size.width*0.02,),
                //         Text("Certificate",style: TextStyle(fontSize: 20),)
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                InkWell(
                  onTap: () {
                    Get.to(About());
                  },
                  child: Container(
                    height: size.height * 0.07,
                    color: Color.fromARGB(255, 59, 59, 59).withOpacity(0.3),
                    child: Padding(
                      padding: EdgeInsets.only(left: size.width * 0.03),
                      child: Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.shop,
                            color: Color.fromARGB(255, 177, 156, 87),
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          Text(
                            "About",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                InkWell(
                  onTap: () {
                    Get.to(DailyMenu());
                  },
                  child: Container(
                    height: size.height * 0.07,
                    color: Color.fromARGB(255, 59, 59, 59).withOpacity(0.3),
                    child: Padding(
                      padding: EdgeInsets.only(left: size.width * 0.03),
                      child: Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.bookOpen,
                            color: Color.fromARGB(255, 177, 156, 87),
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          Text(
                            "Daily Menu",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                InkWell(
                  onTap: () {
                    //   final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                    // provider.logout();
                    con.logout();
                  },
                  child: Container(
                    height: size.height * 0.07,
                    color: Color.fromARGB(255, 59, 59, 59).withOpacity(0.3),
                    child: Padding(
                      padding: EdgeInsets.only(left: size.width * 0.03),
                      child: Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.signOut,
                            color: Color.fromARGB(255, 177, 156, 87),
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          Text(
                            "SignOut",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
