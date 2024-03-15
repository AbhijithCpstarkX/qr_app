import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  State<Profile> createState() => _ProfileState();

}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          children: [
            Container(
            ),
        SizedBox(
          height: 100,
        ),
        CircleAvatar(
          radius: 100,
          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJADA29zP6qZv2ETbbBYPqPrh5CRsxdWmoYQ&usqp=CAU'),),
          Text('Itachi Uchiha',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            Text('flutter developer',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(Icons.email,
                    color:Colors.teal ,
                  ),
                  SizedBox(width: 10,),
                  Text('itachi@gmail.com',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],

              ),
              decoration: const BoxDecoration(color: Colors.white),

            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 20),

              child: Row(
                children: [
                  Icon(Icons.phone,
                    color:Colors.teal ,
                  ),
                  SizedBox(width: 10,),
                  Text('1111111111111',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],

              ),
              decoration: const BoxDecoration(color: Colors.white),

            ),









          ],
        ),
      ),
    );
  }
}