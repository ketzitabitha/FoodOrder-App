import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:nalam/controllers/google.dart';
import 'package:nalam/payment/afterpayment.dart';
import 'package:nalam/screens/admin.dart';
import 'package:nalam/screens/dash.dart';
import 'package:nalam/screens/home.dart';
import 'package:nalam/screens/logins/login.dart';
import 'package:nalam/screens/option/bulkorder.dart';
import 'package:nalam/screens/option/dailymenu.dart';
import 'package:nalam/screens/orders.dart';
import 'package:nalam/widgets/navi.dart';
import 'package:nalam/widgets/splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // => ChangeNotifierProvider(
    // create: (context) => GoogleSignInProvider(),
    // child:
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );

    // );
  }
}
