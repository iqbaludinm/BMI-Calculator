import 'package:flutter/material.dart';
import 'package:kegiatan1/calculate/home_calculator.dart';
import 'package:kegiatan1/main.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Body Mass Index',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black87,
            fontFamily: 'San Francisco',
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              alignment: Alignment.center,
              icon: Icon(Icons.settings),
              color: Colors.black,
              onPressed: () {})
        ],
        backgroundColor: lightColor,
        // toolbarHeight: 75,
      ),
      body: new Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              new Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0)),
                  color: mainColors,
                ),
                margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                width: 400.0,
                height: 45.0,
                child: new Text(
                  'Apa itu BMI ?',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'San Francisco',
                      fontSize: 19.0,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                padding: EdgeInsets.only(
                  left: 20.0,
                  top: 10.0,
                ),
              ),
              new Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)),
                  color: firstColor,
                ),
                width: 351.0,
                height: 900.0,
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.fromLTRB(17, 15, 15, 15),
                      child: new Text(
                        'Indeks massa tubuh adalah metrik standar yang digunakan untuk menentukan siapa saja yang masuk dalam golongan berat badan sehat dan tidak sehat.\n\nIndeks massa tubuh alias BMI membandingkan berat badan Anda dengan tinggi badan Anda, dihitung dengan membagi berat badan dalam kilogram dengan tinggi badan dalam meter kuadrat.\n\nDari hasil perhitungan tersebut didapatkan hasil, setiap hasil perhitungan memiliki kategori tersendiri. Dalam standar BMI, kategori tersebut dibagi menjadi 3, diantaranya :\n\n1. Dibawah 18.5 :\n\t\t\tUnderWeight atau Kurus\n2. 18.5 - 24.9 :\n\t\t\t Normal\n3. Lebih dari 25 :\n\t\t\tOverWeight atau Obesitas',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Nexa',
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            // wordSpacing: 0,
                            height: 1.4),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
              // Padding(padding: EdgeInsets.only(top: 50)),
              SizedBox(
                height: 40,
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
                color: lightColor,
                child: Text(
                  "Let's Calculate !",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontFamily: 'San Francisco',
                      fontWeight: FontWeight.bold),
                ),
                //antara pake push atau push replacement
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Calculator()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
