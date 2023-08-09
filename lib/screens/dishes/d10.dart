import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';


class D10 extends StatelessWidget {
  const D10({super.key});

  _callNumber() async {
    const number = '7867099466'; //set the number here
    var res = await FlutterPhoneDirectCaller.callNumber(number);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Builder(builder: (context) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff171717),
          body: Container(
            child: Column(
              children: [
                Container(
                    // color: Colors.amber,
                    height: size.height / 1.4,
                    width: size.width,
                    child: Image.asset(
                      "asset/10.jpg",
                      fit: BoxFit.cover,
                    )),
                Spacer(),
                Container(
                  height: size.height / 4.3,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                  child: Padding(
                    padding: EdgeInsets.all(size.height * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "To Order Food & Snacks",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
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
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Text(
                          "Or Whatsapp to this Number",
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
              ],
            ),
          ),
        ),
      );
    });
  }
}
