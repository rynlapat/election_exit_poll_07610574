
import 'dart:convert';

import 'package:election_exit_poll_07610574/pages/nameitem.dart';
import 'package:election_exit_poll_07610574/pages/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class FirstPage extends StatefulWidget {
  static const routeName = '/first';
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var items = [
  NameItem(
  number: 1,
  displayName: 'นายสุรเดช สังฆธรรม',

  ),
  NameItem(
  number: 2,
  displayName: 'นายบุญญวัฒน์ หัสสากร',

  ),
    NameItem(
      number: 3,
      displayName: 'นายพงษ์สวัสดิ์ ธีระวัฒนกุล',

    ),
    NameItem(
      number: 4,
      displayName: 'นายอุชัยยา จันทร์พรหมมา',

    ),
    NameItem(
      number: 5,
      displayName: 'นายชัยพฤกษ์ รุ่งนิรันดร์',

    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('POLL'),),
      body: Container(
           decoration: BoxDecoration(
             image: const DecorationImage(
               image: const AssetImage('assets/images/bg.png'),
               fit: BoxFit.fill
             ),
           ),

         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,

           children: [
             SizedBox(height: 30.0,),
             Container(
               width: 100.0,
                 height: 100.0,
                 child: Image.asset('assets/images/vote_hand.png')),
             SizedBox(height: 20.0,),
             Center(child: Text('เลือกตั้ง อบต.',style: GoogleFonts.mali(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.greenAccent,),)),
             SizedBox(height: 5.0,),
             Center(child: Text('รายชื่อผู้รับสมัครเลือกตั้ง',style: GoogleFonts.mali(fontSize: 15.0,color: Colors.pink.shade100),)),
             SizedBox(height: 5.0,),
             Center(child: Text('นายกองค์การบริหารส่วนตำบลเขาพระ',style: GoogleFonts.mali(fontSize: 15.0,color: Colors.purple),)),
             SizedBox(height: 5.0,),
             Center(child: Text('อำเภอเมืองนครนายก จังหวัดนครนายก',style: GoogleFonts.mali(fontSize: 15.0,color: Colors.blue),)),
             SizedBox(height: 5.0,),
             ElevatedButton(onPressed: (){
               _showMaterialDialog('SUCCESS','บันทึกข้อมูลสำเร็จ [190,73,112,27,46]');
             }, child: Text('เบอร์ 1 : นายสุรเดช สังฆธรรม',style: GoogleFonts.mali(fontSize: 25.0),)),
             SizedBox(height: 5.0,),
             ElevatedButton(onPressed: (){
               _showMaterialDialog('SUCCESS','บันทึกข้อมูลสำเร็จ [192,76,112,27,48]');
             }, child: Text('เบอร์ 2 : นายบุญญวัฒน์ หัสสากร',style: GoogleFonts.mali(fontSize: 25.0),)),
             SizedBox(height: 5.0,),
             ElevatedButton(onPressed: (){
               _showMaterialDialog('SUCCESS','บันทึกข้อมูลสำเร็จ [193,76,113,27,48]');
             }, child: Text('เบอร์ 3 : นายพงษ์สวัสดิ์ ธีระวัฒนกุล',style: GoogleFonts.mali(fontSize: 25.0),)),
             SizedBox(height: 5.0,),
             ElevatedButton(onPressed: (){
               _showMaterialDialog('SUCCESS','บันทึกข้อมูลสำเร็จ [195,76,113,28,48]');
             }, child: Text('เบอร์ 4 : นายอุชัยยา จันทร์พรหมมา',style: GoogleFonts.mali(fontSize: 25.0),)),
             SizedBox(height: 5.0,),
             ElevatedButton(onPressed: (){
               _showMaterialDialog('SUCCESS','บันทึกข้อมูลสำเร็จ [197,76,113,28,49]');
             }, child: Text('เบอร์ 5 : นายชัยพฤกษ์ รุ่งนิรันดร์',style: GoogleFonts.mali(fontSize: 25.0),)),
             SizedBox(height: 20.0,),
             ElevatedButton(onPressed: (){
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => ResultPage()),
               );
             }, child: Text('ดูผล',style: GoogleFonts.mali(fontSize: 20.0),)),
           ],

         ),


      ),



    );
  }
  void _showMaterialDialog(String title, String msg) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title,style: GoogleFonts.baiJamjuree(),),
          content: Text(msg,style: GoogleFonts.mali(fontWeight: FontWeight.bold),),
          actions: [
            // ปุ่ม OK ใน dialog
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                // ปิด dialog
                Navigator.of(context).pop();



              },
            ),
          ],
        );
      },
    );
  }
  Future<void> _test() async{
    var url = Uri.parse('https://cpsu-test-api.herokuapp.com/exit_poll');
    var response = await http.get(url,headers: {'id':'07610574'});
    if(response.statusCode==200){
      //ดึงค่า response.body ขึ้นมา
      Map<String,dynamic> jsonBody = json.decode(response.body);
      String status = jsonBody['status'];
      String? message = jsonBody['message'];
      List<dynamic> data = jsonBody['data'];
      print('STATUS: $status');
      print('MESSAGE :');
      print('data: $data');
      // data.forEach((element) {
      //   var foodlist = data.map((element) => FoodItem(
      //     id : element('id'),
      //     name: element('name'),
      //     price: element('price'),
      //     image: element('image'),
      //
      //   )).toList();
      //
      // });
    }
  }
}
