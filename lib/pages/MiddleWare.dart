// ignore_for_file: unused_import, implementation_imports, duplicate_ignore

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
// ignore: implementation_imports, unnecessary_import
import 'package:flutter/src/widgets/framework.dart';
import 'package:mylogin_191/pages/home.dart';
import 'package:mylogin_191/pages/home_page.dart';
import 'package:mylogin_191/pages/login.dart';

class MiddleWare extends StatelessWidget {
  const MiddleWare({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
      StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if(snapshot.hasData){
          return HomePage();
        }
        else{
          return LoginPage();
        }
      },
    )
    )
    );
    
  }
}