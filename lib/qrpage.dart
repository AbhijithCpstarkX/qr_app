import 'package:flutter/material.dart';
import 'package:loginpage/flower.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrPage extends StatefulWidget {
  const QrPage({Key? key}) : super(key: key);

  @override
  State<QrPage> createState() => _QrPageState();
}

class _QrPageState extends State<QrPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                child: CircleAvatar(radius: 80.0,
                    backgroundImage: NetworkImage(
'https://live.staticflickr.com/65535/51407633318_a88527b843_z.jpg'  ,                  )),
              ),
              SizedBox(
                height: 40,
              ),
              QrImageView(
                data: 'chunniless sabu',
                version: QrVersions.auto,
                backgroundColor: Colors.white,
                size: 200.0,
              ),
              TextButton(onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Flower()),);}, child: Text('SCAN',style: TextStyle(color: Colors.white),),)

            ],
          ),
        ),
      ),
    );
  }
}
