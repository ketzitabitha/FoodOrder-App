import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nalam/widgets/navi.dart';

import 'home.dart';
import 'logins/login.dart';

class Das extends StatelessWidget {
  const Das({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              return Navi();
            } else if (snapshot.hasError) {
              return Center(child: Text("Something Went Wrong!"));
            } else {
              return Login();
            }
          }),
    );
  }
}
