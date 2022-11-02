import 'package:mmg/multiple_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

 class Dashboard extends StatelessWidget {
  const Dashboard({super.key, required this.email});
  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Utama"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Selamat datang : "+ email),
            Text("Berhasil Login", style: TextStyle(color: Colors.purple),),
            
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Multiplewidget()
                ));
              },
              
              child: Text("Cek Multiple Widget")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              child: Text("Kembali")
            )
            
          ],
        
        ),
      ),
    );
  }
}