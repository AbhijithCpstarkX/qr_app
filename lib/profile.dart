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
          backgroundImage: NetworkImage('https://scontent.fccj6-1.fna.fbcdn.net/v/t1.6435-1/80027122_566808227203110_9001316137387950080_n.jpg?stp=cp0_dst-jpg_e15_p120x120_q65&_nc_cat=104&ccb=1-7&_nc_sid=5f2048&_nc_ohc=ULhSBFOASRIAX81MQgP&_nc_oc=AQlUFIfAuk2jl_9ZX7fnFaVQosu7r2Ktr3SMy05ad-0K0jFoDN-cWfHikhgrYXm4dLIZX8nY3H3FaHm6n0bTS4x1&_nc_ht=scontent.fccj6-1.fna&oh=00_AfD4tgomTWe85y7ThhU9wfARnz3byzokgcysLqXUQKDfuQ&oe=661A6A68'),),
          Text('Bhoodhidharman 2.0',
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
                  Text('vishal@gmail.com',
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
                  Text('4567468275625',
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