import 'package:cfi_complaints_app/models/user.dart';
import 'package:cfi_complaints_app/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home/home.dart';
import 'authenticate/authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);

    if(user == null){
      return Authenticate();
    }
    else{
      return Home();
    }
  }
}
