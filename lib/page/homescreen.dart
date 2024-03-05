import 'package:flutter/material.dart';
import 'package:pertemuan3/login_page.dart';
import 'package:url_launcher/url_launcher.dart';


class HomeScreen extends StatelessWidget {
  final String username;
  const HomeScreen({Key? key, this.username="Nama Pengguna"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Selamat Datang, $username"),
            ElevatedButton(
              onPressed: (){
                goToInstagram("https://www.instagram.com");
              },
              child: Text("Masuk Ke Instagram"),
            ),
          ],
        )
      ),
    );
  }
  Future<void> goToInstagram(String url) async  {
    if (await canLaunchUrl(Uri.parse(url))){
       launchUrl(Uri.parse(url));
    } else{
      throw 'Error cannot launch $url';
    }
  }
}
