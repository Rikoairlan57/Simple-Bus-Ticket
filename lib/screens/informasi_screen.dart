// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class InformasiScreen extends StatelessWidget {
  const InformasiScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Information"),
        centerTitle: true,
      ),      
      body: Center(
        child: Column(
          children: [
            Text("Informasi Ticket", style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 10,
            ),
            Text("jakarta -> bandung bus sinar terang  40 set harga : 150000"),
            SizedBox(
              height: 10,
            ),
            Text("jakarta -> surabaya bus sinar jaya 40 set harga : 750000"),
            SizedBox(
              height: 10,
            ),
            Text("jakarta -> yogyakarta bus kebayor 40 set harga : 450000"),
          ],
        ),
      ),
    );
  }
}