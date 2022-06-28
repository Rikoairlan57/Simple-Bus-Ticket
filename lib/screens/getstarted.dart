// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:bus_ticket/screens/login_screen.dart';
import 'package:lottie/lottie.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                child: FractionallySizedBox(
                  heightFactor: 1.0,
                  widthFactor: 1.0,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/getstarted.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Beli Ticket Bus Murah Ga Pake Ribet Di Bus Ticket aja",
                        textAlign: TextAlign.center, 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        )
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => LoginScreen())
                          );
                        }, 
                        child: Text("GETSTARTED")
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                )
              )
            ],
          ),
        ),
      
    );
  }
}