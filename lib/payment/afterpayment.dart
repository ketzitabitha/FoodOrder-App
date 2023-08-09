// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:nalam/screens/orders.dart';
// import 'package:nalam/widgets/navi.dart';


// class AfterPayment extends StatelessWidget {
  
  
//   const AfterPayment({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Color.fromARGB(255, 245, 227, 178),
//         bottom: PreferredSize(
//           preferredSize: Size.fromHeight(size.height/4),
//           child: Container(
//             height: size.height/4.3,
//             child: Column(
//              children: [
//                 Image.asset("asset/logo.png"),
//                 Text("Nalam-Foods",style: TextStyle(fontSize: 18),)
//                 // Icon(Icons.dining_sharp,size: size.width*0.3,)
//                 ],
//             ),
//           ),
//         ),
//         ),
//         body: Container(
//           height: size.height,
//             width: size.width,
            
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: size.height/2,
//                   // color: Colors.amber,
//                   child: Image.asset("asset/1.gif",fit: BoxFit.cover,),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     Get.offAll(Navi());
//                   },
//                   child: Container(
//                                   height: size.height*0.06,
//                                   width: size.width*0.5,
//                                   decoration: BoxDecoration(
//                                     color: Color.fromARGB(255, 245, 227, 178),
//                                     borderRadius: BorderRadius.circular(30)
//                                   ),
//                                   child: Center(child: Text("Home",style: TextStyle(fontSize: 30),)),
//                                 ),
//                 ),
//               ],
//             ),
//         ),
//       ),
//     );
//   }
// }