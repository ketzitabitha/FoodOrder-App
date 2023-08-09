import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class FirebaseController extends GetxController {
  var dete = DateTime.now();
  GlobalKey<FormState> signupGlobalKey = GlobalKey();

  TextEditingController quantity = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController address = TextEditingController();
  // TextEditingController food = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose

    quantity.dispose();
    name.dispose();
    phone.dispose();
    address.dispose();
    super.dispose();
  }

  Future ordernow() async {
    try {
      addOrderData(quantity.text.trim(), name.text.trim(), phone.text.trim(),
          address.text.trim(), DateTime.now(), '');
      clearData();
    } on FirebaseAuthException catch (err) {
      Get.snackbar(
        backgroundColor: Colors.amber,
        "Oops!",
        '$err',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  Future addOrderData(
    String quantity,
    String name,
    String phone,
    String address,
    time,
    String food,
  ) async {
    await FirebaseFirestore.instance
        .collection(FirebaseAuth.instance.currentUser!.email!)
        .doc()
        .set({
      'Food': food,
      'Quantity': quantity,
      'Name': name,
      'Phone': phone,
      'Address': address,
      'Time': DateFormat("EEE,hh:mm").format(DateTime.now()),
    });
  }

  Future sendAdmin(
    String quantity,
    String name,
    String phone,
    String address,
    time,
    String food,
  ) async {
    await FirebaseFirestore.instance
        .collection("OrdersForAdmin")
        .doc(FirebaseAuth.instance.currentUser!.uid + "$dete")
        .set({
      'Food': food,
      'Quantity': quantity,
      'Name': name,
      'Phone': phone,
      'Address': address,
      'Time': DateFormat("EEE,hh:mm").format(DateTime.now()),
      'UID': FirebaseAuth.instance.currentUser!.uid + "$dete"
    });
  }

  Future sendAdminExtra(
    String quantity,
    String name,
    String phone,
    String address,
    time,
    String food,
  ) async {
    await FirebaseFirestore.instance
        .collection("OrdersForAdminExtra")
        .doc()
        .set({
      'Food': food,
      'Quantity': quantity,
      'Name': name,
      'Phone': phone,
      'Address': address,
      'Time': DateFormat("EEE,hh:mm").format(DateTime.now()),
    });
  }

  Future clearData() async {
    await Future.delayed(Duration(seconds: 5), () {
      textClear();
    });
  }

  textClear() {
    quantity.clear();
    name.clear();
    phone.clear();
    address.clear();
  }
}
