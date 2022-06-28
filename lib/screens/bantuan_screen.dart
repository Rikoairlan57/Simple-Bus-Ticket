// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class BantuanScreen extends StatelessWidget {
  const BantuanScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bantuan"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text("Bagaimana saya membeli ticket ?"),
            )
          ),
          Card(
            child: ListTile(
              title: Text("Bagaimana saya mancari jadwal Bus ?"),
            )
          ),
          Card(
            child: ListTile(
              title: Text("Bagaimana cara saya  membayar ticket ?"),
            )
          ),
          Card(
            child: ListTile(
              title: Text("Bagaimana saya menggunkan ticket online ?"),
            )
          ),
          Card(
            child: ListTile(
              title: Text("Lapor Admin!"),
            )
          ),
          
        ]
      ),
    );
  }
}