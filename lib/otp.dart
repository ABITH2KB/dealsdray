import 'package:flutter/material.dart';
import 'bottom tab/tabs.dart';

class OtpUp extends StatefulWidget {
  const OtpUp({Key? key}) : super(key: key);

  @override
  State<OtpUp> createState() => _OtpUpState();
}

class _OtpUpState extends State<OtpUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Image.asset(
              'asset/image/dealsdray.jpeg',
              width: 190,
              height: 190,
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(right: 190),
              child: Text(
                'OTP Verification',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 120),
              child: Column(
                children: [
                  Text('We have sent a unique otp number', style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300
                  )),
                  SizedBox(height: 6),
                  Text(' to your phone number +91-9765232417', style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                  )),
                ],
              ),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                SizedBox(width: 20),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: '',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: '',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: '',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: '',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  Text('1 : 02',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18

                  )),
                  SizedBox(width: 230),
                  Text(
                    "SEND AGAIN",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 140, left: 300),
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                    backgroundColor: MaterialStateProperty.all(Colors.red)
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TabsPage(),
                    ),
                  );
                },
                child: Icon(Icons.arrow_forward_rounded,size: 30, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
