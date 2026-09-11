import 'package:flutter/material.dart';
import 'package:flutter_comen69_project/views/home_ui.dart';
import 'package:google_fonts/google_fonts.dart';

//-------------------------------------

void main() {
    runApp(
        //เรียกใช้งาน class ที่เรียกใช้ widget หลักของแอพ
        FlutterComen69Project(),
    );
}

//------------------------------------
//แนะนำเป็น class แบบ Statefulwidget โดยตั้งชื่อล้อกับชื่อโปรเจกต์
//class นี้จะเรียกใช้ widget หลักของ app โดย widget หลักของแอพ แนะนำ materialapp
class FlutterComen69Project extends StatefulWidget {
  const FlutterComen69Project({super.key});

  @override
  State<FlutterComen69Project> createState() => _FlutterComen69ProjectState();
}

class _FlutterComen69ProjectState extends State<FlutterComen69Project> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //ซ่อนแบนเนอร์ที่มุมขวา
      home: HomeUI(), //เรียกหน้าจอ
      theme: ThemeData(
        //ให้เลือกใช้ fonts จาก google font ณ ที่นี้ใช้ฟอนต์ kanit
        textTheme: GoogleFonts.kanitTextTheme(Theme.of(context).textTheme),
      ),
    );
  }
}
