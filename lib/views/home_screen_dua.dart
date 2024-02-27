import 'package:flutter/material.dart';

class HomeScreenKedua extends StatefulWidget {
  const HomeScreenKedua({super.key});

  @override
  State<HomeScreenKedua> createState() => _HomeScreenKeduaState();
}

class _HomeScreenKeduaState extends State<HomeScreenKedua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screeen2"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
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
      ),
    );
  }
}
