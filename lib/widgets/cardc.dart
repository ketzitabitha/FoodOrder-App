import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:nalam/screens/dishes/d2.dart';
import 'package:nalam/screens/dishes/d3.dart';
import 'package:nalam/screens/dishes/d4.dart';
import 'package:nalam/screens/menutime.dart';

class cardc extends StatelessWidget {
  const cardc({
    Key? key,
    required this.size,
    required this.text,
    required this.decorationImage,
  }) : super(key: key);

  final Size size;
  final Text text;
  final DecorationImage decorationImage;

  _callNumber() async {
    const number = '7867099466'; //set the number here
    var res = await FlutterPhoneDirectCaller.callNumber(number);
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("Call"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.transparent,
      // title: Text("My title"),
      // content: Text("This is my message."),
      actions: [
        Container(
          height: size.height * 0.33,
          width: size.width*0.9,
          // color: Colors.amber,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("asset/border.png"), fit: BoxFit.fill)),
          child: Padding(
            padding: const EdgeInsets.only(left: 30,top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "To Order Food & Snacks",
                      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                InkWell(
                  onTap: () {
                    _callNumber();
                  },
                  child: Container(
                    height: size.height * 0.06,
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 245, 227, 178),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Text(
                      "Call",
                      style: TextStyle(fontSize: 30),
                    )),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Row(
                  children: [
                    SizedBox(width: size.width*0.12,),
                    Text(
                      "or",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Text(
                  "Whatsapp to this Number",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  "7867099466",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        // okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: size.height / 5.1,
        width: size.width * 0.3,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 245, 227, 178),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              height: size.height / 9,
              width: size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 95, 95, 95),
                image: decorationImage,
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xffF6F6F6)),
                onPressed: () {
                  showAlertDialog(context);
                },
                child: text)
          ],
        ),
      ),
    );
  }
}
