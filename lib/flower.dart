import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:loginpage/profile.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class Flower extends StatefulWidget {
  const Flower({Key? key}) : super(key: key);

  @override
  State<Flower> createState() => _FlowerState();
}

class _FlowerState extends State<Flower> {
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
          Column(
            children: [
              MobileScanner(
              // fit: BoxFit.contain,
              controller: MobileScannerController(
              detectionSpeed: DetectionSpeed.normal,
                facing: CameraFacing.front,
                torchEnabled: true,
              ),
              onDetect: (capture) {
                final List<Barcode> barcodes = capture.barcodes;
                final Uint8List? image = capture.image;
                for (final barcode in barcodes) {
                  debugPrint('Barcode found! ${barcode.rawValue}');
                }
              },
                      ),
              TextField(style: TextStyle(color: Colors.white),)
            ],
          ),
              TextButton(onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Profile()),);}, child: Text('SCAN',style: TextStyle(color: Colors.white),),)
            ],



          ),
        ),
      ),
    );
  }
}
