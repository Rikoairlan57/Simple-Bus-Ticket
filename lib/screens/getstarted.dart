import 'package:flutter/material.dart';
import 'package:bus_ticket/screens/login_screen.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
             ElevatedButton(onPressed: (){
              Navigator.of(context)
              .pushReplacement(
                MaterialPageRoute(
                  builder: (context) => LoginScreen()
                ));
             }, child: Text("Getstarted"))
            ],
          ),
        ),
      ),
    );
  }
}