import 'package:flutter/material.dart';
import 'package:loginpage/qrpage.dart';

class Reg extends StatefulWidget {
  const Reg({Key? key}) : super(key: key);

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
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
                  child: TextField(style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: 'Enter Your Name',
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
                      hintText: 'Enter Your Roll NO',
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
                      hintText: 'Enter YOur Email',
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
                  child: Text('Register',style: TextStyle(color: Colors.white,fontSize: 20)),
                  onPressed: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const QrPage()),
                  );
                  },
                  style: ElevatedButton.styleFrom(

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
