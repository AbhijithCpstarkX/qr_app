import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:loginpage/qrpage.dart';
import 'package:loginpage/registration.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController rollno=TextEditingController();
  TextEditingController password=TextEditingController();

  Future<void>login()async {
    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/login');
    var response = await http.post(uri,
        headers:<String, String>{
        'Content-Type' : 'application/json; charset=UTF-8'
        },
        body: jsonEncode({'rollno': rollno.text,'password':password.text}));

    print(response.statusCode);
    print(response.body);
    if(response.statusCode == 200) {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const QrPage()));
      print('Success');
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('SOMETHING WENT WRONG')));
    }

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text('Login',style: TextStyle(color: Colors.white,fontSize: 40),),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: rollno,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: 'Enter Your Roll No',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: password,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder:
                  OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText: 'Enter Your Password',
                ),
              ),
            ),
            ElevatedButton(
              child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 20)),
              onPressed: () {login();},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  textStyle: TextStyle(
                    fontSize: 2,)),
            ),
            SizedBox(height: 10,),
            TextButton(onPressed:() { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Reg()),
            );

            }, child: Text('Dont Have An Account?Register.',style: TextStyle(color: Colors.white),)
            ),],

        ),
      ),
    );
  }
}
