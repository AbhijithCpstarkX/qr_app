import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:loginpage/loginscreen.dart';
import 'package:loginpage/qrpage.dart';

class Reg extends StatefulWidget {
  const Reg({Key? key}) : super(key: key);

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  TextEditingController name=TextEditingController();
  TextEditingController rollno=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController pass=TextEditingController();

  void register()async {
   Uri uri = Uri.parse('https://scnner-web.onrender.com/api/register');
   var response = await http.post(uri,
     headers:<String, String>{
     'Content-Type' : 'application/json; charset=UTF-8'
   },
     body: jsonEncode({
       'name': name.text,
       'email': email.text,
       'rollno': rollno.text,
       'password': pass.text,
     })
   );
   print(response.statusCode);
   print(response.body);
   if(response.statusCode == 200) {
     Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
   }else{
     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('SOMETHING WENT WRONG')));
   }

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:Colors.teal,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text('Registration',style: TextStyle(color: Colors.white,fontSize: 40),),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    controller: name,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: 'Enter Your Name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    controller: rollno,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder:
                      OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      hintText: 'Enter Your Roll NO',
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    controller: email,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder:
                      OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      hintText: 'Enter YOur Email',
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    controller: pass,
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

                  child: Text('Register',style: TextStyle(color: Colors.white,fontSize: 20)),
                  onPressed: () {register();
                    //print(name.text);
                    //print(rollno.text);
                    //print(email.text);
                    //print(pass.text);
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => const QrPage()),);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      textStyle: TextStyle(
                        fontSize: 2,)),
                ),
              ],

          ),
        ),
      ),
    );
  }
}
