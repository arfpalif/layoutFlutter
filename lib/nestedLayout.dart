import 'package:flutter/material.dart';

class Nestedlayout extends StatefulWidget {
  const Nestedlayout({super.key});

  @override
  State<Nestedlayout> createState() => _NestedlayoutState();

  
}

class _NestedlayoutState extends State<Nestedlayout> {
  void didChangeDependencies(){
    super.didChangeDependencies();
    print('ini didChangeDependencies di Nested Layout');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(title: Text("Profil")),
  body: Padding(
    padding: EdgeInsets.all(16),
    child: Column(
      children: [
        Row(
          children: [
            Image(image: AssetImage('assets/kucing.png'), width: 100, height: 100),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Alif Raihan", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text("Teknik Informatika"),
              ],
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Fitur", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("- Profil"),
                          Text("- Pengaturan"),
                          Text("- Notifikasi"),
                        ],
                      ),
                    ],
                  ),
                ]
              ),
          ),
          ],
        ),
      ],
    ),
  ),
);  
  }
}