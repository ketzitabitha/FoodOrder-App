import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AllOrders extends StatelessWidget {
  AllOrders({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Orders"),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              opacity: 100,
              image: AssetImage("asset/bg5.png"),
              fit: BoxFit.cover),
        ),
        child: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("OrdersForAdminExtra")
                .snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: ((context, index) {
                      QueryDocumentSnapshot x = snapshot.data!.docs[index];

                      return Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Container(
                            height: size.height / 4,
                            width: size.width * 0.8,
                            color: Color.fromARGB(255, 59, 59, 59)
                                .withOpacity(0.3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: size.height / 4.1,
                                  width: size.width * 0.38,
                                  // color: Colors.blueAccent,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "Customer Name :",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "Food :",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "Quantity :",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "Phone :",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "Address :",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "Ordered Time :",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: size.height / 4.1,
                                  width: size.width * 0.38,
                                  // color: Colors.blueAccent,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        x["Name"],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        x["Food"],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        x["Quantity"],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        x["Phone"],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        x["Address"],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        x["Time"],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    }));
              }
              return Center(child: CircularProgressIndicator());
            }),
      ),
    );
  }
}
