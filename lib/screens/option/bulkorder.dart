import 'package:flutter/material.dart';

class BulkOrder extends StatelessWidget {
  const BulkOrder({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Bulk Orders",
            style: TextStyle(color: Color(0xff262626)),
          ),
          backgroundColor: Color(0xffD9D9D9),
        ),
        body: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  opacity: 100,
                  image: AssetImage("asset/bg5.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.04,
              ),
              Container(
                // height: size.height,
                width: size.width * 0.8,
                child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Container(
                height: size.height / 3,
                width: size.width * 0.7,
                decoration: BoxDecoration(
                    color: Color(0xff262626),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: size.height / 4.6,
                      width: size.width * 0.2,
                      // color: Colors.amber,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Name :",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Text(
                            "Phone :",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Text(
                            "Your Need :",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    Container(
                      // height: size.height/4.6,
                      width: size.width * 0.45,
                      // color: Colors.amber,
                      child: Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.06,
                          ),
                          Container(
                            height: size.height * 0.03,
                            width: size.width * 0.5,
                            color: Color(0xff414141),
                            child: TextFormField(),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Container(
                            height: size.height * 0.03,
                            width: size.width * 0.5,
                            color: Color(0xff414141),
                            child: TextFormField(),
                          ),
                          SizedBox(
                            height: size.height * 0.008,
                          ),
                          Container(
                            height: size.height * 0.15,
                            width: size.width * 0.5,
                            color: Color(0xff414141),
                            child: TextFormField(
                              maxLines: 20,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 1)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                height: size.height * 0.05,
                width: size.width * 0.3,
                decoration: BoxDecoration(
                    color: Color(0xff262626),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                )),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                height: size.height * 0.05,
                width: size.width * 0.3,
                decoration: BoxDecoration(
                    color: Color(0xffF5B22C),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                    child: Text(
                  "Call",
                  style: TextStyle(fontSize: 30),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
