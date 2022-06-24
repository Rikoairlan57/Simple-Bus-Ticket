// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:bus_ticket/screens/ticket.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:bus_ticket/model/bus.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({
    Key? key,
    required this.bus,
  }) : super(key: key);
  final Bus bus;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int _count = 1;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    if (_count <= 1) {
      return;
    }
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    int total = widget.bus.price * _count;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text(widget.bus.title),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(widget.bus.imageUrl),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Harga : ${total.toString()}"),
                  FloatingActionButton.small(
                      onPressed: _decrementCount, child: Icon(Icons.remove)),
                  Text("${_count}"),
                  FloatingActionButton.small(
                      onPressed: _incrementCount, child: Icon(Icons.add)),
                ]),
          ),
          Container(
              child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => Ticket(total: total)));
                  },
                  child: Text("Beli"))
            ],
          )),
        ],
      )),
    );
  }
}
