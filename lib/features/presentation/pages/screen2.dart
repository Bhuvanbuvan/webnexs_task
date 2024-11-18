// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final List<String> bottles = [
    "assets/images/bottole1.png",
    "assets/images/bottle2.png",
    "assets/images/bottle3.png",
    "assets/images/bottle7.png",
    "assets/images/bottole6.png",
    "assets/images/bottole8.png",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Top Layer: Image
            Stack(
              clipBehavior: Clip.none, // Ensures overlay visibility
              children: [
                // Top Image
                SizedBox(
                  height: 620,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/screen2img.png',
                    fit: BoxFit.cover,
                  ),
                ),

                // Middle Layer: Content (Overlaying Image)
                Positioned(
                  top: 550, // Controls the overlap
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 500,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    decoration: const BoxDecoration(
                      color: Color(0xFF5B6255),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF5B6255),
                          blurRadius: 20,
                          spreadRadius: 20,
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "10% OFF NEW ARRIVALS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 42,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Our latest drop of the finest whisky, expertly-sourced and delivered to you straight from Japan.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Enjoy 10% off using NEWARRIVALS10.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "Shop Now",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF5B6255),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: const BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 400,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              height: 700,
              color: Colors.white,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: bottles.length,
                itemBuilder: (context, index) {
                  return Bottlewidgets(bottleImage: bottles[index]);
                },
              ),
            ),

            Container(
              color: Color(0xFF5B6255),
              padding: EdgeInsets.only(left: 10, right: 10, top: 20),
              width: size.width * 10,
              height: 250,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 115,
                        child: BottomItem(
                          icon: 'assets/images/scr1png.png',
                          textString:
                              "GUARANTEED AUTHENTICITY All products sold are genuine, authentic and in original packaging.",
                        ),
                      ),
                      SizedBox(
                        width: 115,
                        child: BottomItem(
                          icon: 'assets/images/scr1png2.png',
                          textString:
                              "GUARANTEED AUTHENTICITY All products sold are genuine, authentic and in original packaging.",
                        ),
                      ),
                      SizedBox(
                        width: 115,
                        child: BottomItem(
                          icon: 'assets/images/scr1png3.png',
                          textString:
                              "GUARANTEED AUTHENTICITY All products sold are genuine, authentic and in original packaging.",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    "Follow us on social media",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Image.asset(
                            color: Colors.black, 'assets/images/Vector.png'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Image.asset('assets/images/instagram-logo.png'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        child: Image.asset('assets/images/linkedin.png'),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Bottlewidgets extends StatelessWidget {
  final String bottleImage;
  const Bottlewidgets({
    Key? key,
    required this.bottleImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          SizedBox(
            height: 170,
            child: Positioned(
              child: Image.asset(
                'assets/images/background.png',
                height: 170,
                width: 170,
              ),
            ),
          ),
          SizedBox(
            height: 140,
            child: Positioned(
                top: 10,
                left: 40,
                child: Image.asset(height: 150, width: 170, bottleImage)),
          ),
          Positioned(
            top: 150,
            child: Container(
              width: 160,
              child: Column(
                children: [
                  Text(
                    "Kirin Fuji Single Grain 50th Anniversary Edition",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10),
                  ),
                  Text(
                    "599.99 USD",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("data"),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BottomItem extends StatelessWidget {
  final String icon;
  final String textString;
  const BottomItem({
    super.key,
    required this.icon,
    required this.textString,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          color: Colors.white,
          icon,
          height: 40,
          width: 40,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          textAlign: TextAlign.center,
          textString,
          style: TextStyle(
            color: Colors.white,
            fontSize: 9,
          ),
        )
      ],
    );
  }
}
