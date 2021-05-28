import 'package:flutter/material.dart';

void main() {
  //eksekusi untuk menjalankan flutter pertama kali
  //menjalankan function /class MyApp()
  runApp(MyApp());
}
//function class MyApp memanggil ekstensi StatefulWidget
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  //menjalankan fungsi teksEditingControler
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Project UAS Eko Widodo"),
          ),
  //membuat container pada body
        body: Container(
          //batas margin container
          margin: EdgeInsets.all(20),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:<Widget>[
            //tampilan text pada container
            TextField(              
              decoration: InputDecoration(
                //pemberian warna pada container
                fillColor: Colors.lightBlue[50],
                filled: true,
                //menampilkan icon diluar container
                icon: Icon(Icons.adb),
                //menampilkan icon didalam container
                prefixIcon: Icon(Icons.person),
                //menampilkan label text pada container
                labelText: "Nama Lengkap",
                // membuat sudut lengkung pada container
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
              //maksimun input jumlah karakter pada container
              maxLength: 20,
              onChanged: (value){
                setState(() {
                
              });},
              controller: controller,
            ),
            Text(controller.text)
          ]
        ),
      ),
      
    ),
    );
  }
}