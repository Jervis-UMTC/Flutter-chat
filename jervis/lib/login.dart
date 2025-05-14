import 'package:flutter/material.dart';
import 'chat.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Container(
          child: Center(
            child: Text("Start Chatting"),
          ),
        ),
        ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Username"
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Username"
                ),
              ),
              
              SizedBox(height: 10,),

              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Password"
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Password"
                ),
              ),


              SizedBox(height: 10,),
              Container(
                height: 50,
                width: 100,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Chat())
                    );
                  }, 
                  child: Text("Log in"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                  ),
                  ),
              ),  
            ],
          ),
        ),
      ),
    );
  }
}