// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_comen69_project/views/login_ui.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100.0),
            Image.asset('assets/images/img_dev1.png', height: 250.5),
            SizedBox(height: 80.0),
            Image.asset('assets/images/img_dev2.png',),
            SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SAU',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 58, 58, 58),
                    ),
                ),
                Text(
                  'Developer',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w300,
                    color: const Color.fromARGB(255, 58, 58, 58),
                    ),
                ),
              ],
            ),
            SizedBox(height: 80.0
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
                'Login',
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
            SizedBox(
              height: 18.0,
            ),
            OutlinedButton(
              onPressed: (){},
              child: Text(
                'Register',
                style: TextStyle(
                  color: Colors.black
                ),
              ),
              style: OutlinedButton.styleFrom(
                fixedSize: Size(
                  380, 65,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(
              height: 98.0,
            ),
            Text(
              'Create by NinniN SAU',
              style: TextStyle(
                  color: const Color.fromARGB(255, 29, 197, 177),
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            Text(
              'มหาวิทยาลัยเอเชียอาคเนย์',
              style: TextStyle(
                  color: const Color.fromARGB(255, 29, 197, 177),
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
            ),
          ],
        ),
      ),
    );
  }
}
