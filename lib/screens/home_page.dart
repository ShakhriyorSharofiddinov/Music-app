
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          )
        ),
        backgroundColor: Colors.green.shade700,
        title: const Text(
          "Shoxruxbek Ergashev",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: ListView(
        children: [
         for(int i=0; i<20; i++)
           InkWell(
               child: myCard(),
             onTap: (){
                 Navigator.pushNamed(context, "musicPlayPage");
             },
           )
        ],
      ),
    );
  }
}

  Widget myCard() {
  return  Card(
    color: Colors.white10.withOpacity(0.2),
    margin: const EdgeInsets.only(left: 8.0, top: 4.0, right: 8, bottom: 4),
    child: Container(
      width: double.infinity,
      height: 80,
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
         CircleAvatar(
            radius: 32,
            backgroundImage: AssetImage('assets/images/dostlarim_img.jpg'),
          ),
          SizedBox(width: 16),
          Container(
            width: 250,
            child: Text(
              "Do'stlarim",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Icon(
                  Icons.add_chart,
                  size: 35,
                  color: Colors.green.shade900,
                ),
                SizedBox(height: 4),
                Text(
                  "2:54",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ),
        ],
      ),
    ),
  );
}


