// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_comen69_project/views/login_ui.dart';

class PasswordChangUI extends StatelessWidget {
  const PasswordChangUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200.0),
            Image.asset('assets/images/img_correct.png', height: 250.5),
            SizedBox(height: 50.0),
            
            Align(
                alignment: AlignmentGeometry.center,
                child: Text(
                  'Password Changed!',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold,color: Colors.black),
                ),
              ),
            SizedBox(
              height: 5.0,),
            Align(
                alignment: AlignmentGeometry.center,
                child: Text(
                  'Your password has been changed',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300,color: const Color.fromARGB(255, 167, 167, 167)),
                ),
              ),
              SizedBox(height: 3.0,),
              Align(
                alignment: AlignmentGeometry.center,
                child: Text(
                  'successfully.',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300,color:const Color.fromARGB(255, 167, 167, 167)),
                ),
              ),
  
            SizedBox(
              height: 40.0
            ),
            
            ElevatedButton(
              onPressed: (){
                //เปิดไปหน้า LoginUI() แบบย้อนกลับได้
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginUI(),
                  ),
                );
              },
              child: Text(
                'Back to Login',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  380, 65,
                ),
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}