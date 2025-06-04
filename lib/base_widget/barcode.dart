import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';


class BarcodeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barcode Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Barcode Generator')),
        body: Center(
          child: BarcodeWidget(
            barcode: Barcode.code128(), // Choose barcode type here
            data: '123456789012',       // The value encoded in the barcode
            width: 300,
            height: 100,
            drawText: true,
          ),
        ),
      ),
    );
  }
}
