// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_comen69_project/views/password_chang_ui.dart';

class NewpasswordUI extends StatefulWidget {
  const NewpasswordUI({super.key});

  @override
  State<NewpasswordUI> createState() => _NewpasswordUIState();
}

class _NewpasswordUIState extends State<NewpasswordUI> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
          top: 70.0,
          left: 40.0,
          right: 40.0,
          bottom: 50.0,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: OutlinedButton(
                  onPressed: () {
                    //ย้อนกลับไปหน้าก่อนหน้า
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios_new_sharp, size: 20.0),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(75.0, 65.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(16.0),
                    ),
                  ),
                ),
              ),
              //ปุ่มย้อนกลับไปหน้าต่างๆ

              SizedBox(
                height: 30.0,
              ),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Text(
                  'Create new Password',
                  style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Text(
                  "Your new password must be unique from those",
                  style: TextStyle(fontSize: 16.0,
                  color: Colors.grey[400],
                  ),
                ),
              ),
              SizedBox(height: 3.0),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Text(
                  "previously used.",
                  style: TextStyle(fontSize: 16.0,
                  color: Colors.grey[400],
                  ),
                ),
              ),
              //ทำหัวข้อใหญ่และคำอธิบายย่อยตัวเล็ก
              
              //ทำกล่องข้อความกรอกพาสเวิด 2 กล่อง
              SizedBox(height: 28.0),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'New Password',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 26.0, //ห่างบนล่าง
                    horizontal: 20.0, //ห่างซ้ายขวา
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                ),
              ),
              SizedBox(height: 28.0),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Confirm Password',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 26.0, //ห่างบนล่าง
                    horizontal: 20.0, //ห่างซ้ายขวา
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                ),
              ),
              
              SizedBox(
                height: 50.0,
                ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PasswordChangUI(),
                     ),
                    );
                },
                child: Text('Reset Password', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 60),//ได้ขนาดความกว้างของจอ
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}