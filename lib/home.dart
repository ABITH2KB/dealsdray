import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class homee extends StatefulWidget {
  const homee({Key? key}) : super(key: key);

  @override
  State<homee> createState() => _homeeState();
}

class _homeeState extends State<homee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {

            },
          ),
          title: Padding(
            padding: const EdgeInsets.only(),
            child: Container(
              width: 330,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search here',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w300,
                  ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: const Icon(
                    Icons.search_rounded,
                    color: Colors.black,
                    size: 27,
                  ),
                  fillColor: Colors.grey.withOpacity(0.2),
                  filled: true,
                ),
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {

              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(scrollDirection:Axis.vertical ,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  viewportFraction: 0.9,
                ),
                items: [

                  Image.asset(
                    'asset/image/img1.jpeg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'asset/image/img2.jpeg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'asset/image/img3.jpeg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'asset/image/img4.jpeg',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
    const SizedBox(height: 20,),

            Container(
              height: 200,
              width: 420,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text('KYC Pending',style: TextStyle(color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  const Text('You need to provide the reqired',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300
                  )),const SizedBox(height: 6,),
                  const Text('documents for the account activtion',style: TextStyle(
                    fontSize: 18,

                    color: Colors.white,
                    fontWeight: FontWeight.w300
                  ),),
                  const SizedBox(height: 20,),
                  TextButton(onPressed: (){}, child: const Text('Click here ->'
                      ,style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),))
                ],
              ),
            ),
            const SizedBox(height: 50,),

            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Icon(Icons.mobile_screen_share, size: 40),SizedBox(height: 7,),
                      Text('Mobile')
                    ],
                  ), // Mobile icon
                  SizedBox(width: 60),
                  Column(
                    children: [
                      Icon(Icons.laptop, size: 40),SizedBox(height: 7,),
                          Text('Laptop'),
                    ],
                  ), // Laptop icon
                  SizedBox(width: 60),
                  Column(
                    children: [
                      Icon(Icons.camera_alt, size: 40),SizedBox(height: 7,),
                       Text('Camara'),
                    ],
                  ), // Camera icon
                  SizedBox(width: 60),
                  Column(
                    children: [
                      Icon(Icons.tv, size: 40),SizedBox(height: 7,),
                           Text('TV'),
                    ],
                  ), // LED icon
                ],
              ),
            ),const SizedBox(
              height: 50,
            ),
            Container(
              height: 400,
              width: 450,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Exclusive for you',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 20),
                        Image.asset(
                          'asset/image/image5.jpeg',
                          width: 150,
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 20),
                        Image.asset(
                          'asset/image/imge7.jpeg',
                          width: 150,
                          height: 250,
                          fit: BoxFit.cover,

                        ),
                        const SizedBox(width: 20),
                        Image.asset(
                          'asset/image/image6.jpeg',
                          width: 150,
                          height: 250,
                          fit: BoxFit.cover,
                        ),const SizedBox(width: 20,),
                        Image.asset(
                          'asset/image/imge7.jpeg',
                          width: 150,
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                        // Add more images as needed
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              decoration: const BoxDecoration(
                color: Colors.transparent
              ),
            )



          ],
                      ),
      ),
    );
  }
}
