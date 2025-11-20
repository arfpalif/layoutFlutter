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
        Container(  
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
        // Required: A list of two or more Colors to transition between
              colors: [
          Colors.blue,
          Color(0xff1E40AF),
        ],
        // Optional: The start point of the gradient (default top left)
        begin: Alignment.topLeft,
        // Optional: The end point of the gradient (default bottom right)
        end: Alignment.bottomRight,
        // Optional: Stops to control the distribution of colors (0.0 to 1.0)
        // stops: [0.0, 0.8], 
      ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          margin: EdgeInsets.only(bottom: 20),
          child: Row(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/kucing.png')
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Alif Raihan", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                Text("Teknik Informatika"),
              ],
            ),
          ],
        ),
        ),
        
        SizedBox(height: 20),
        Row(
          children: [
            Container(
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