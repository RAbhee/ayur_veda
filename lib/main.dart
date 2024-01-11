import 'package:ayur_veda/pages/register.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_slide_to_act/gradient_slide_to_act.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ),
  );
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}): super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  int _currentIndex = 0;

  List<String> imageList = [
    "assets/background/spgg.jpg",
    "assets/background/spii.jpg",
    "assets/background/sphh.jpg",
    "assets/background/spjj.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background/bbggg.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: size.height / 1, // Adjust this value as needed
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 16 / 9,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: imageList.map((image) {
              return Container(
                width: size.width,
                height: size.height / 1.5,
                alignment: Alignment.bottomCenter,
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        "assets/background/logooo.png",
                        width: 150,
                        height: 150,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Ayurveda where tradition meets well-being. Experience nature’s gift with 'Ayur Nature'",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GradientSlideToAct(
                        width: 400,
                        text: "Slide to Start",
                        textStyle: TextStyle(color: Colors.white, fontSize: 15),
                        backgroundColor: Color(0Xff172663),
                        onSubmit: () {Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                          // Get.toNamed("/home");
                        },
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFE9F8FF),
                            Color(0xFFC4D6F7),
                            Color(0xFF9FB0F2),
                            Color(0xFF7A8BE7),
                            Color(0xFF4F54BE),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
