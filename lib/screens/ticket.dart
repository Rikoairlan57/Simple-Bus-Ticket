// ignore_for_file: prefer_const_constructors

import 'package:bus_ticket/screens/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';


class Ticket extends StatefulWidget {
  int total;
  Ticket({Key? key, required this.total}) : super(key: key);

  @override
  State<Ticket> createState() => _TicketState(total);
}

class _TicketState extends State<Ticket> {
  int total;
  _TicketState(this.total);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Ticket"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Scane me to pay", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              QrImage(
                data: total.toString(),
                version: QrVersions.auto,
                size: 200.0,
              ),
              Container(
                width: 200,
                child: Center(
                  child: Text(
                    "Screenshot this Qrcode and next scane to your payment", 
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    )
                  ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text("OKe"))
            ],
          ),
        ),
        
      ),
    
    );
  }
}
