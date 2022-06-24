// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bus_ticket/screens/bus_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("Ticket Bus"),
          centerTitle: true,
          actions: [
            SizedBox(height: 50),
            Text("${loggedInUser.firstName} ${loggedInUser.secondName}",
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                )),
          ]),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: ElevatedButton(
                      child: Text("Jadwal"),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                              title: Center(
                                child: Text("Jadwal"),
                              ),
                              content: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("1.  29/6/2022 Jakarta - Surabaya 14.30",
                                      style: TextStyle(fontSize: 15)),
                                  Text("2.  29/6/2022 Surabaya - Jakarta 9.30",
                                      style: TextStyle(fontSize: 15)),
                                  Text(
                                      "3.  29/6/2022 Jakarta - Jogyakarta 10.00",
                                      style: TextStyle(fontSize: 15)),
                                  Text("4.  29/6/2022 Bandung - Surabaya 08.30",
                                      style: TextStyle(fontSize: 15)),
                                  Text("5.  29/6/2022 Jakarta - Surabaya 11.30",
                                      style: TextStyle(fontSize: 15)),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  child: Text("OK"),
                                  onPressed: () => Navigator.pop(context),
                                )
                              ]),
                        );
                      },
                      style:
                          ElevatedButton.styleFrom(minimumSize: Size(120, 40)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: ElevatedButton(
                      child: Text("About Me"),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                              title: Center(
                                child: Text("About me"),
                              ),
                              content: Text(
                                  "ini adalah applikasi pemesanan tiket bus secara online"),
                              actions: [
                                TextButton(
                                  child: Text("Ok"),
                                  onPressed: () => Navigator.pop(context),
                                )
                              ]),
                        );
                      },
                      style:
                          ElevatedButton.styleFrom(minimumSize: Size(120, 40)),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: ElevatedButton(
                      child: Text("Pesan Ticket"),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => BusScreen()));
                      },
                      style:
                          ElevatedButton.styleFrom(minimumSize: Size(50, 40)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: ElevatedButton(
                      child: Text("Log Out"),
                      onPressed: () {
                        logout(context);
                      },
                      style:
                          ElevatedButton.styleFrom(minimumSize: Size(120, 40)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}
