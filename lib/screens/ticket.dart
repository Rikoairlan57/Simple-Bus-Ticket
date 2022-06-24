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
        child: Column(
          children: [
            QrImage(
              data: total.toString(),
              version: QrVersions.auto,
              size: 200.0,
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
    );
  }
}
