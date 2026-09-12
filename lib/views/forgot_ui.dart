// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_comen69_project/views/otp_ui.dart';

class ForgotUI extends StatefulWidget {
  const ForgotUI({super.key});

  @override
  State<ForgotUI> createState() => _ForgotUIState();
}

class _ForgotUIState extends State<ForgotUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              SizedBox(
                height: 30.0,
              ),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Text(
                  "Don't worry! It occurs. Please enter the email",
                  style: TextStyle(fontSize: 16.0,
                  color: Colors.grey[400],
                  ),
                ),
              ),
              SizedBox(height: 3.0),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Text(
                  "address linked with your account.",
                  style: TextStyle(fontSize: 16.0,
                  color: Colors.grey[400],
                  ),
                ),
              ),
              SizedBox(height: 37.0),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Enter your email',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 26.0, //ห่างบนล่าง
                    horizontal: 20.0, //ห่างซ้ายขวา
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                ),
              ),
              SizedBox(
                height: 37.0,
                ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OtpUI(),
                     ),
                    );
                },
                child: Text('Send Code', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 60),//ได้ขนาดความกว้างของจอ
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(
                height: 400.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Remember Password",
                  ),
                  TextButton(
                    onPressed: () {
                      //ย้อนกลับไปก่อนหน้า
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 11, 223, 212),
                        fontSize: 15.5,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}