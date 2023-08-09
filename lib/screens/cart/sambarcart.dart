// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:intl/intl.dart';
// import 'package:nalam/controllers/firebase.dart';
// import 'package:nalam/payment/afterpayment.dart';

// class SambarCart extends StatelessWidget {
//   SambarCart({super.key});

//   FirebaseController con = Get.put(FirebaseController());

//   // var food = "Sambar";

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: Color.fromARGB(129, 201, 199, 199),
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: Text("Cart",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
//       ),
//       body: Container(
//         height: size.height/1.17,
//         width: size.width,
//         decoration: BoxDecoration(
//           color: Color(0xff171717),
//           borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40),)
//         ),
//         child: SingleChildScrollView(
//           child: Form(
//             key: con.signupGlobalKey,
//             child: Column(
//               children: [
//                 SizedBox(height: size.height*0.04,),
//                 Container(
//                   height: size.height/6.7,
//                   width: size.width*0.8,
//                   decoration: BoxDecoration(
//                     color: Color(0xff262626),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Row(
//                     children: [
//                       SizedBox(
//                         height: size.height,
//                         width: size.width*0.24,
//                         child: Image.asset("asset/sambar.jpg",fit: BoxFit.fitWidth,),),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               SizedBox(height: size.height*0.02,),
//                               Text("Sambar",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
//                               SizedBox(height: size.height*0.02,),
//                               Row(
//                                 children: [
//                                   Text("Rs.40",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
//                                 SizedBox(width: size.width*0.08,),
                              
//                               Row(
//                                 children: [
//                                   Text("Quantity :",style: TextStyle(
//                                     color: Colors.white,
//                                   ),),
//                                   SizedBox(
//                                     width: size.width*0.02,
//                                   ),
//                                   Container(
//                                     height: size.height*0.04,
//                                     width: size.width*0.1,
//                                     color: Color(0xff414141),
//                                     child: TextFormField(
//                                       controller: con.quantity,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                          ),
//                       ],
//                    ),
//                  ),
                    
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: size.height*0.02,),
//               Container(
//                 height: size.height/4,
//                 width: size.width*0.8,
//                 decoration: BoxDecoration(
//                   color: Color(0xff262626)
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Container(
//                       height: size.height/4.6,
//                       width: size.width*0.3,
//                       // color: Colors.amber,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           Text("Name :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
//                           SizedBox(
//                                     height: size.height*0.02,
//                                   ),
//                           Text("Phone :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
//                           SizedBox(
//                                     height: size.height*0.02,
//                                   ),
//                           Text("Address :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                         width: size.width*0.02,
//                       ),
//                     Container(
//                       // height: size.height/4.6,
//                       width: size.width*0.45,
//                       // color: Colors.amber,
//                       child: Column(
//                         children: [
//                           SizedBox(
//                                     height: size.height*0.016,
//                                   ),
//                           Container(
//                             height: size.height*0.03,
//                             width: size.width*0.5,
//                             color: Color(0xff414141),
//                             child: TextFormField(
//                               validator: ((value) {
//                             if (value!.isEmpty) {
//                               return 'Enter Your Name';
//                             }
//                           }),
//                               controller: con.name,
//                             ),
//                           ),
//                           SizedBox(
//                                     height: size.height*0.01,
//                                   ),
//                           Container(
//                             height: size.height*0.03,
//                             width: size.width*0.5,
//                             color: Color(0xff414141),
//                             child: TextFormField(
//                               validator: ((value) {
//                             if (value!.isEmpty) {
//                               return 'Enter Your Phone';
//                             }
//                           }),
//                               controller: con.phone,
//                             ),
//                           ),
//                           SizedBox(
//                                     height: size.height*0.008,
//                                   ),
//                           Container(
//                             height: size.height*0.15,
//                             width: size.width*0.5,
//                             color: Color(0xff414141),
//                             child: TextFormField(
//                               validator: ((value) {
//                             if (value!.isEmpty) {
//                               return 'Enter Your Address';
//                             }
//                           }),
//                               controller: con.address,
//                               maxLines: 20,
//                               decoration: InputDecoration(
//                                 contentPadding: EdgeInsets.only(top: 1)
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//              ),
//             SizedBox(height: size.height*0.02,),
//               Container(
//                   height: size.height/2.53,
//                   width: size.width,
//                   decoration: BoxDecoration(
//                     color: Color(0xff262626),
//                     borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40),)
//                   ),
//                   child: Padding(
//                     padding: EdgeInsets.all(size.height*0.02),
//                     child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Column(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                 children: [
//                                   Container(
//                                     height: size.height/7,
//                                     width: size.width*0.4,
//                                     // color: Colors.amber,
//                                     child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                       children: [Text("SubTotal",style: TextStyle(color: Colors.white),),
//                                       Text("Delivey",style: TextStyle(color: Colors.white),),
                  
//                                       ],
//                                     ),
//                                   ),
//                                   Container(
//                                     height: size.height/7,
//                                     width: size.width*0.4,
//                                     // color: Colors.amber,
//                                     child: Column(crossAxisAlignment: CrossAxisAlignment.end,
//                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                       children: [Text("Rs.40",style: TextStyle(color: Colors.white),),
//                                       Text("Rs.50",style: TextStyle(color: Colors.white),),],
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                             Divider(
//                               thickness: 2,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text("Total ",style: TextStyle(color: Colors.white),),
//                                   Text("Rs.90 ",style: TextStyle(color: Colors.white),)
//                                 ],
//                               ),
//                             ),
//                             // InkWell(
//                             //   onTap: () {
//                             //     Get.off(Navi());
//                             //   },
//                             //   child: Container(
//                             //     height: size.height*0.05,
//                             //     width: size.width*0.3,
//                             //     decoration: BoxDecoration(
//                             //       color: Color.fromARGB(255, 245, 227, 178),
//                             //       borderRadius: BorderRadius.circular(30)
//                             //     ),
//                             //     child: Center(child: Text("Cash on Delivery",)),
//                             //   ),
//                             // ),
//                             // Text("or",style: TextStyle(color: Colors.white),),
//                             InkWell(
//                               onTap: () {
//                                 if (con.signupGlobalKey.currentState!
//                                 .validate()) {
//                               con.signupGlobalKey.currentState!.save();
//                               con.addOrderData(
//                                 con.quantity.text,
//                                 con.name.text,
//                                 con.phone.text,
//                                 con.address.text,
//                                 DateFormat("EEE,hh:mm").format(DateTime.now()),
//                                 'Sambar'
//                                 ).then((value) => con.sendAdmin(
//                                 con.quantity.text,
//                                 con.name.text,
//                                 con.phone.text,
//                                 con.address.text,
//                                 DateFormat("EEE,hh:mm").format(DateTime.now()),
//                                 'Sambar'
//                                   )).then((value) => con.sendAdminExtra(
//                                 con.quantity.text,
//                                 con.name.text,
//                                 con.phone.text,
//                                 con.address.text,
//                                 DateFormat("EEE,hh:mm").format(DateTime.now()),
//                                 'Sambar'
//                                     )).then((value) => Get.off(AfterPayment()));
//                                 }
//                               },
//                               child: Container(
//                                 height: size.height*0.05,
//                                 width: size.width*0.3,
//                                 decoration: BoxDecoration(
//                                   color: Color.fromARGB(255, 245, 227, 178),
//                                   borderRadius: BorderRadius.circular(30)
//                                 ),
//                                 child: Center(child: Text("Pay and Order",)),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }