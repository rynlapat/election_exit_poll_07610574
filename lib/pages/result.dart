
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RESULT'),),
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: const AssetImage('assets/images/bg.png'),
              fit: BoxFit.fill
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Text('RESULT',style: GoogleFonts.mali(fontSize: 40.0,color: Colors.white),),
              SizedBox(height: 40.0,),
              Text('เบอร์ 1 : นายสุรเดช สังฆธรรม ได้ 222 เสียง',style: GoogleFonts.mali(fontSize: 25.0,color: Colors.purple),),
              Text('เบอร์ 2 : นายบุญญวัฒน์ หัสสากร ได้ 119 เสียง',style: GoogleFonts.mali(fontSize: 25.0,color: Colors.blue),),
              Text('เบอร์ 3 : นายพงษ์สวัสดิ์ ธีระวัฒนกุล ได้ 81 เสียง',style: GoogleFonts.mali(fontSize: 25.0,color: Colors.green),),
              Text('เบอร์ 4 : นายอุชัยยา จันทร์พรหมมา ได้ 60 เสียง',style: GoogleFonts.mali(fontSize: 25.0,color: Colors.orange),),
              Text('เบอร์ 5 : นายชัยพฤกษ์ รุ่งนิรันดร์ ได้ 32 เสียง',style: GoogleFonts.mali(fontSize: 25.0,color: Colors.red),),

            ],
          ),
        ),
      ),
    );
  }
}
