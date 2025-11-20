import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Profile',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 15,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/kucing.png'),
                  ),
                  SizedBox(height: 10),
                  Text('Nama Pengguna'.toUpperCase(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text('UI/UX DESIGNER', style: TextStyle(fontSize: 12, color: Colors.grey[600])),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0xffF1F5F9),
                      borderRadius: BorderRadius.circular(99),
                    ),
                    child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon( Icons.email, color: Color(0xff3B82F6), size: 20),
                        SizedBox(width: 10),
                        Text('EMP-2024-001', 
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color(0xff4B5563), fontSize: 14),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Text('Informasi personal', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(Icons.person, color: Color(0xff3B82F6)),
                title: Text('Nama lengkap', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                subtitle: Text('Alif Raihan Firman Putra ', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(Icons.phone, color: Color(0xff3B82F6)),
                title: Text('Nomor Telepon', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                subtitle: Text('+62 812-3456-7890', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(Icons.location_on, color: Color(0xff3B82F6)),
                title: Text('Alamat', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                subtitle: Text('Jl. Contoh Alamat No.123, Kota Contoh, Negara Contoh', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text('Jadwal kerja', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Column(
          children: [
            ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(Icons.schedule, color: Color(0xff3B82F6)),
                title: Text('Senin - Jumat', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                subtitle: Text('08.00 - 17.00 ', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
              ),
          ],
          ),
        ],
      ),
      ),
      )
    );
  }
}