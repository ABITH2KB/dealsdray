import 'package:flutter/material.dart';
import 'bottom tab/tabs.dart';
import 'otp.dart';

class ToggleablePage extends StatefulWidget {
  @override
  _ToggleablePageState createState() => _ToggleablePageState();
}

class _ToggleablePageState extends State<ToggleablePage> {
  int _selectedPageIndex = 0;

  List<Widget> _pages = [
    PageOne(),
    PageTwo(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                'asset/image/dealsdray.jpeg',
                width: 180,
                height: 150,
              ),
            ),
            ToggleButtons(
              color: Colors.red,
              isSelected: List.generate(
                  _pages.length, (index) => index == _selectedPageIndex),
              onPressed: (int newIndex) {
                setState(() {
                  _selectedPageIndex = newIndex;
                });
              },
              children: [
                const Icon(Icons.phone, size: 40,),
                const Icon(Icons.email, size: 40,),
              ],
            ),
            _pages[_selectedPageIndex],
          ],
        ),
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child:Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 70),
              child: Text('Glad to see you!',style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold
              ),),
            ),
            const Text('Please provide your phone number',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 19
              ),),
            const SizedBox(height: 70,),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Phone',
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.w300
                  ),
                ),
              ),

            ),
            const SizedBox(height: 100,),
            SizedBox(
              width: 350,
              height: 70,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OtpUp(),
                    ),
                  );
                },
                child: const Text(
                  'S E N D  C O D E',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 250),
                child: Text(
                  "Let's Begin!",
                  style: TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.only(right: 50),
                child: Text(
                  "Please enter your credentials to proceed",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Your Email',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Create password',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye_rounded,size: 30,),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Referral Code(optional)',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 290),
                child: Container(
                  height: 80,
                  width: 80,
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
                    child: const Icon(
                      Icons.arrow_forward_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ToggleablePage(),
  ));
}
