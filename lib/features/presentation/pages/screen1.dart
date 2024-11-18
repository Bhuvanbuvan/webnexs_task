import 'package:flutter/material.dart';
import 'package:webnexs_task/features/presentation/pages/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Positioned(
                top: -130,
                left: 0,
                child: SizedBox(
                  height: 620,
                  child: Image.asset(
                    'assets/images/screen1img.png',
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  height: size.height * .55,
                  width: size.width,
                  decoration: const BoxDecoration(
                    color: Color(0xFF5B6255),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF5B6255),
                        blurRadius: 20,
                        spreadRadius: 20,
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "10% OFF NEW ARRIVALS ENDS TONIGHT",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Our latest drop of the finest whisky, expertly-sourced and delivered to you straight from Japan.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Enjoy 10% off using NEWARRIVALS10.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      const Text(
                        "Offers Ends tody at midnight.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Screen2(),
                              ),
                            );
                          });
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          child: Text(
                            "Shop Now",
                            style: TextStyle(
                              color: Colors.white,
                            ),
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
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        width: size.width * 10,
                        height: 180,
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
                                      color: Colors.black,
                                      'assets/images/Vector.png'),
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
                                  child: Image.asset(
                                      'assets/images/instagram-logo.png'),
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
                                  child:
                                      Image.asset('assets/images/linkedin.png'),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
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
