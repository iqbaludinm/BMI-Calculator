// body: Column(
//   children: <Widget>[
//     Expanded(
//       child: Row(
//         children: <Widget>[
//           radioButton("Male", Colors.blue, 0),
//           radioButton("Female", Colors.pink, 1),
//         ],
//       ),
//     ),
//     Column(
//       children: <Widget>[
//         TextField(
//           keyboardType: TextInputType.number,
//           textAlign: TextAlign.center,
//           decoration: InputDecoration(
//             hintText: "Yout height in cm",
//             filled: true,
//             fillColor: lightColor,
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(12.0),
//               borderSide: BorderSide.none,
//             ),
//           ),
//         ),
//       ],
//     ),
//     /* Line dibawah ini ngikutin yang di yutub */
//     // Container(
//     //   width: 175.0,
//     //   height: 200.0,
//     //   child: Row(
//     //     children: <Widget>[
//     //       TextField(
//     //         keyboardType: TextInputType.number,
//     //         decoration: InputDecoration(
//     //           hintText: "Your height in cm",
//     //           filled: true,
//     //           fillColor: Colors.grey[200],
//     //           border: OutlineInputBorder(
//     //             borderRadius: BorderRadius.circular(10.0),
//     //             borderSide: BorderSide.none,
//     //           ),
//     //         ),
//     //       ),
//     //       TextField(
//     //         keyboardType: TextInputType.number,
//     //         decoration: InputDecoration(
//     //           hintText: "Your mass in kg",
//     //           filled: true,
//     //           fillColor: Colors.grey[200],
//     //           border: OutlineInputBorder(
//     //             borderRadius: BorderRadius.circular(10.0),
//     //             borderSide: BorderSide.none,
//     //           ),
//     //         ),
//     //       ),
//     //     ],
//     //   ),
//     // ),

//     Padding(padding: EdgeInsets.symmetric(vertical: 135)),
//     Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: <Widget>[
//         SizedBox(
//           width: 350,
//           height: 60,
//           // ignore: deprecated_member_use

//         ),
//       ],
//     ),
//     SizedBox(
//       height: 60,
//       width: 200,
//     ),
//   ],
// ),

// kotak atas kiri
// Expanded(
//   child: Container(
//     child: Text('Male'),
//     margin: EdgeInsets.all(15.0),
//     decoration: BoxDecoration(
//       color: Colors.green,
//       borderRadius: BorderRadius.circular(10.0),
//     ),
//     height: 200.0,
//     width: 170.0,
//   ),
// ),
// kotak atas kanan
// Expanded(
//   child: Container(
//     child: Text(
//       'Female',
//     ),
//     margin: EdgeInsets.all(15.0),
//     decoration: BoxDecoration(
//       color: Colors.red,
//       borderRadius: BorderRadius.circular(10.0),
//     ),
//     height: 200.0,
//     width: 175.0,
//   ),
// ),

//kotak tengah kiri
// Expanded(
//   child: Row(
//     children: <Widget>[
//       Expanded(
//         child: Container(
//           child: Text('Tinggi Badan'),
//           margin: EdgeInsets.all(15.0),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(10.0),
//           ),
//           height: 200.0,
//           width: 170.0,
//         ),
//       ),
//       // kotak tengah kanan
//       Container(
//         child: Text('Berat Badan'),
//         margin: EdgeInsets.all(15.0),
//         decoration: BoxDecoration(
//           color: Colors.yellow,
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         height: 200.0,
//         width: 175.0,
//       ),
//     ],
//   ),
// ),

// kotak result
// Expanded(
//   child: Row(
//     children: <Widget>[
//       // kotak atas kiri
//       Expanded(
//         child: Container(
//           margin: EdgeInsets.all(15.0),
//           decoration: BoxDecoration(
//             color: Colors.green,
//             borderRadius: BorderRadius.circular(10.0),
//           ),
//           height: 200.0,
//           width: 380.0,
//         ),
//       ),
//     ],
//   ),
// ),

/* PEMBATAS */
/* dibawah ini adalah textfield yang tulisan textfield nya bisa keatas */
/* Expanded(
            child: Column(
              children: <Widget>[
                new Padding(padding: EdgeInsets.only(top: 3.0)),
                new TextFormField(
                  decoration: new InputDecoration(
                    // contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 5),
                    labelText: "Your height in cm",
                    fillColor: Colors.white,
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                      borderSide:
                          const BorderSide(width: 30, color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Colors.white)),
                    filled: true,
                    //fillColor: Colors.green
                  ),
                  keyboardType: TextInputType.number,
                  style: new TextStyle(
                    fontFamily: "San Francisco",
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ), */
/* PEMBATAS */

// import 'package:flutter/material.dart';

// Color mainColor = Color(0xFF1D1E33);

// class Calculator extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'BMI Calculator',
//           style: TextStyle(
//               fontFamily: 'Poppins',
//               fontWeight: FontWeight.bold,
//               fontSize: 18,
//               color: Colors.black87),
//         ),
//       ),
//       body: Center(
//         child: Column(
//           children: <Widget>[
//             Expanded(
//               child: Row(
//                 children: <Widget>[
//                   Expanded(
//                     child: Container(
//                       margin: EdgeInsets.all(15.0),
//                       decoration: BoxDecoration(
//                         color: mainColor,
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       height: 200.0,
//                       width: 170.0,
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                       margin: EdgeInsets.all(15.0),
//                       decoration: BoxDecoration(
//                         color: mainColor,
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       height: 200.0,
//                       width: 170.0,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Row(
//                 children: <Widget>[
//                   Container(
//                     margin: EdgeInsets.all(15.0),
//                     decoration: BoxDecoration(
//                       color: mainColor,
//                       borderRadius: BorderRadius.circular(10.0),
//                     ),
//                     height: 200.0,
//                     width: 340.0,
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Row(
//                 children: <Widget>[
//                   Expanded(
//                     child: Container(
//                       margin: EdgeInsets.all(15.0),
//                       decoration: BoxDecoration(
//                         color: mainColor,
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       height: 200.0,
//                       width: 170.0,
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                       margin: EdgeInsets.all(15.0),
//                       decoration: BoxDecoration(
//                         color: mainColor,
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       height: 200.0,
//                       width: 170.0,
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.all(15.0),
//                     decoration: BoxDecoration(
//                       color: mainColor,
//                       borderRadius: BorderRadius.circular(10.0),
//                     ),
//                     height: 200.0,
//                     width: 170.0,
//                   ),
//                 ],
//               ),
//             ),
//             // Row(
//             //   children: <Widget>[
//             //     Container(
//             //           margin: EdgeInsets.all(15.0),
//             //           decoration: BoxDecoration(
//             //             color: mainColor,
//             //             borderRadius: BorderRadius.circular(10.0),
//             //           ),
//             //           height: 200.0,
//             //           width: 170.0,
//             //         ),
//             //   ],
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Container(
//   padding: const EdgeInsets.symmetric(horizontal: 80),
//   child: SingleChildScrollView(
//     child: FlatButton(
//       color: Colors.amber[400],
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(36),
//       ),
//       onPressed: () {},
//       child: Container(
//         padding: const EdgeInsets.symmetric(vertical: 14),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               "Let's Calculate",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 17,
//                   fontFamily: 'Montserrat'),
//             ),
//           ],
//         ),
//       ),
//     ),
//   ),
// ),
//     );
//   }
// }

// class bmiCalculate {
// bmiCalculate({this.height, this.weight});

//

//

// Widget radioButton(String value, Color color, int index) {
//     return Expanded(
//       child: Container(
//         height: 150,
//         margin: EdgeInsets.symmetric(horizontal: 12.0),
//         child: Column(
//           children: <Widget>[
//             RaisedButton.icon(
//               color: currentIndex == index ? color : Colors.grey[200],
//               shape: new RoundedRectangleBorder(
//                   borderRadius: new BorderRadius.circular(10.0)),
//               label: Text(
//                 value,
//                 style: TextStyle(
//                     // line dibawah menjelaskan bahwa jika index saat ini = tombol yang dipencet maka warna nya jadi negatif
//                     color: currentIndex == index ? Colors.white : color,
//                     fontSize: 22.0,
//                     fontWeight: FontWeight.bold),
//               ),
//               //ketika tombol di klik maka index saat ini akan menggunakan index lawannya
//               onPressed: () {
//                 changeIndex(index);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
