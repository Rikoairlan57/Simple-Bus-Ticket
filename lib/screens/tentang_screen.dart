// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TentangScreen extends StatelessWidget {
  const TentangScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tantang Kami"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: [
              Text("About Me"),
              SizedBox(
                height: 15,
              ),
              Text("Aplikasi Ticket Bus adalah applikasi pemesanan ticket bus secara online")
            ]
          ),
        ),
      ),
    );
  }
}