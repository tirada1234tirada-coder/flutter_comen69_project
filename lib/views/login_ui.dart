// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_comen69_project/views/forgot_ui.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
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
                  'welcome to SAU! Glad',
                  style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Text(
                  'to see you again',
                  style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 28.0),
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
              SizedBox(height: 18.0),
              TextField(
                //keyboardType: TextInputType.emailAddress, ลบก็ได้
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Enter your password',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 26.0, //ห่างบนล่าง
                    horizontal: 20.0, //ห่างซ้ายขวา
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                  suffixIcon: Icon(Icons.visibility_rounded),
                ),
              ),
              SizedBox(height: 20.0),
              Align(
                alignment: AlignmentGeometry.centerRight,
                child: TextButton(
                  onPressed: () {
                    //เปิดไปหน้าforgot ui แบบย้อนกลับได้
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotUI(),
                     ),
                    );
                  },
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.grey[600], fontSize: 15.5),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
                ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Login', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 60),//ได้ขนาดความกว้างของจอ
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                'Or login with',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ 
                  OutlinedButton(
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/img_facebook.png',
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(110.0, 60.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: Colors.blue[200]!,
                        width: 1.5,
                      ),  
                      ),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/img_google.png',
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(110.0, 60.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: Colors.blue[200]!,
                        width: 1.5,
                      ),  
                      ),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/img_apple.png',
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(110.0, 60.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: Colors.blue[200]!,
                        width: 1.5,
                      ),  
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Register Now',
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
