import 'package:flutter/material.dart';
import 'dart:async';

import 'package:modul3/main.dart';

class TimerWidget extends StatefulWidget {
  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  late Timer _timer;
  int seconds = 0;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        seconds++;
      });
      print('ini initState');
    });
  }

  void didChangeDependencies() {
    super.didChangeDependencies();
    print('ini didChangeDependencies');
    // Tambahkan logika jika diperlukan saat dependencies berubah
  }

  void didUpdateWidget(TimerWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('ini didUpdateWidget');
    // Tambahkan logika jika diperlukan saat widget diperbarui
  }

  void deactivate() {
    super.deactivate();
    print('ini deactivate');
    // Tambahkan logika jika diperlukan saat widget dinonaktifkan
  }

  @override
  void dispose() {
    _timer.cancel(); // Penting untuk hentikan timer
    super.dispose();
    print('ini dispose');
  }
  
  

  @override
  Widget build(BuildContext context) { 
    print('ini build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Timer Widget'),
      ),
      body: Center(
        child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Seconds elapsed: $seconds',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage(title: 'Flutter')));
            }, child: Text( 'Pindah ke halaman utama')),
          ],
        ),
      ),
      )
    );
  }
}


