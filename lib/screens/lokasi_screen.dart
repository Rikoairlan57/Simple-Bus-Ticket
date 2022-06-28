import 'package:flutter/material.dart';

class LokasiScreen extends StatefulWidget {
  const LokasiScreen({ Key? key }) : super(key: key);

  @override
  State<LokasiScreen> createState() => _LokasiScreenState();
}

class _LokasiScreenState extends State<LokasiScreen> {
  TextEditingController Terminal = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lokasi"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
                  controller: Terminal,
                  onChanged: (value){
                    
                  },
                  decoration: InputDecoration(hintText: "cari lokasi...",),
                ),
          ]
        ),
      )
    );
  }
}