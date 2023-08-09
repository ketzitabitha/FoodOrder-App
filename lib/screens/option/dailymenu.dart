import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

class DailyMenu extends StatelessWidget {
  DailyMenu({super.key});

  // final Uri _url = Uri.parse('https://flutter.dev');

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
    var size = MediaQuery.of(context).size;
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
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Daily Menu",
            style: TextStyle(color: Color(0xff262626)),
          ),
          backgroundColor: Color(0xffD9D9D9),
        ),
        body: Container(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _callNumber();
                    },
                    child: Text("Call for order"),
                  ),
                  Container(
                    height: size.height * 0.06,
                    width: size.width * 0.3,
                    color: Color.fromARGB(255, 59, 59, 59).withOpacity(0.3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "உணவு\nநேரம்",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                     showAlertDialog(context);
                    },
                    child: Text("WhatsApp to Order"),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      // Container(
                      //   height: size.height/3,
                      //   width: size.width*0.4,
                      //   color: Colors.amber,
                      // ),
                      Image.asset("asset/breakfast.jpeg"),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Image.asset("asset/lunch.jpeg"),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Image.asset("asset/dinner.jpeg"),
                      SizedBox(
                        height: size.height * 0.02,
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
  }
}
