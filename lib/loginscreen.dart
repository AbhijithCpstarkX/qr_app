import 'package:flutter/material.dart';
import 'package:loginpage/registration.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              child: TextField(style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: 'Enter Your Roll No',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(style: TextStyle(color: Colors.white),
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
              onPressed: () {},
              style: ElevatedButton.styleFrom(
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
