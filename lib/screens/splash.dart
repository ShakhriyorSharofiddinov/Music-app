import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music/screens/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 120,
                    backgroundColor: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: ClipOval(
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(120),
                          child: Image(image: AssetImage("assets/images/Abdulla.jpg"),fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  const Text(
                    "O\'zbekiston Qahramoni Abdulla Oripov",
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              CupertinoActivityIndicator(color: Colors.blue,radius: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
