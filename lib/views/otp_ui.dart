// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_comen69_project/views/new_password_ui.dart';

class OtpUI extends StatefulWidget {
  const OtpUI({super.key});

  @override
  State<OtpUI> createState() => _OtpUIState();
}

class _OtpUIState extends State<OtpUI> {
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
              SizedBox(height: 30.0),

              //ข้อความหัวข้อใหญ่ และคำอธิบายตัวสีเทา
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Text(
                  'OTP Verification',
                  style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10.0),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Text(
                  "Enter the verification code we just sent on your",
                  style: TextStyle(fontSize: 16.0, color: Colors.grey[400]),
                ),
              ),
              SizedBox(height: 3.0),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Text(
                  "email address.",
                  style: TextStyle(fontSize: 16.0, color: Colors.grey[400]),
                ),
              ),
              SizedBox(height: 28.0),

              //ทำปุ่มใส่รหัส OTP 4 ปุ่ม รวม Row Padding textfield decoration
              Row(
                children: List.generate(
                  4,
                  (index) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                          counterText: "",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                          filled: true,
                          fillColor: Colors.grey[100],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.0),

              //ปุ่มดำ verify
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewpasswordUI()),
                  );
                },
                child: Text('Verify', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    MediaQuery.of(context).size.width,
                    60,
                  ), //ได้ขนาดความกว้างของจอ
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
