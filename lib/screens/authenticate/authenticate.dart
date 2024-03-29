import 'package:cfi_complaints_app/screens/authenticate/register.dart';
import 'package:flutter/material.dart';
import 'sign_in.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;

  void toggleView(){
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: showSignIn ? SignIn(toggleView) : Register(toggleView));
  }
}
