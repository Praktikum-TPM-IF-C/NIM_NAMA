import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Pertemuan 2"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {},
                child: Text("Click me!"),
              ),
              Image.asset("images/OIP.jpg"),
              Image.asset("images/OIP.jpg"),
              Image.asset("images/OIP.jpg"),
              TextField(
                decoration: InputDecoration(
                  focusColor: Colors.red,
                  hintText: "Isi disini",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlutterLogo(),
                  FlutterLogo(),
                  FlutterLogo(),
                ],
              )
            ],
          ),
        ));
  }
}
