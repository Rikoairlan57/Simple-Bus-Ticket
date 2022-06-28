// ignore_for_file: prefer_const_constructors

import 'package:bus_ticket/screens/detail_screen.dart';
import 'package:flutter/material.dart';

import '../data_dummy.dart';

class BusScreen extends StatefulWidget {
  BusScreen({Key? key}) : super(key: key);

  final TextEditingController tujuanController = new TextEditingController();

  @override
  State<BusScreen> createState() => _BusScreenState();
}

class _BusScreenState extends State<BusScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          title: Text("Pesan Ticket"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: dummy_bus.length,
          itemBuilder: (context, index) {
            final bus = dummy_bus[index];
            return GestureDetector(
              onTap: () {
                var push = Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(bus: bus),
                    ));
              },
              child: Column(
                children: [
                  Container(
                    child: Card(
                      margin: EdgeInsets.all(20),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(bus.imageUrl),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(bus.title,
                                      style: TextStyle(fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Jurusan : ${bus.asal} - ${bus.tujuan}"),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Jumlah set : ${bus.set}"),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Harga : ${bus.price}"),
                                      ])
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
