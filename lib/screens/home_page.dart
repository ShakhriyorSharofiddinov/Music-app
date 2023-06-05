import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music/screens/life.dart';
import 'package:music/screens/musicplay_page.dart';
import 'package:music/screens/poem.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String poem = "Serquyosh, hur o\’lkam, elga baxt, najot,\nSen o\’zing do\’stlarga yo\’ldosh, mehribon!\nYashnagay to abad ilmu fan, ijod,\nShuhrating porlasin toki bor jahon!\n\nNaqarot:\nOltin bu vodiylar — jon O\’zbekiston,\nAjdodlar mardona ruhi senga yor!\nUlug\’ xalq qudrati jo\’sh urgan zamon,\nOlamni mahliyo aylagan diyor!\n\nBag\’ri keng o\’zbekning o\’chmas iymoni,\nErkin, yosh avlodlar senga zo\’r qanot!\nIstiqlol mash\’ali, tinchlik posboni,\nHaqsevar, ona yurt, mangu bo\’l obod!\n\nNaqarot:\nOltin bu vodiylar — jon O\’zbekiston,\nAjdodlar mardona ruhi senga yor!\nUlug\’ xalq qudrati jo\’sh urgan zamon,\nOlamni mahliyo aylagan diyor!";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg1.jpg"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  padding: EdgeInsets.all(6),
                  width: 280,
                  height: 200,
                  color: Colors.blue.shade800,
                  child: const Image(
                    image: AssetImage("assets/images/abdulla.jpg"),
                    fit: BoxFit.cover,
                  )),
              Column(
                children: [
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side:
                            BorderSide(color: Colors.blue.shade800, width: 3)),
                    minWidth: 280,
                    height: 50,
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => LifeScreen()));
                    },
                    child: Text(
                      "HAYOTI VA IJODI",
                      style:
                          TextStyle(fontSize: 18, color: Colors.blue.shade800),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side:
                            BorderSide(color: Colors.blue.shade800, width: 3)),
                    minWidth: 280,
                    height: 50,
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => PoemScreen()));
                    },
                    child: Text(
                      "SHE'RIY TO'PLAMLARI",
                      style:
                          TextStyle(fontSize: 18, color: Colors.blue.shade800),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side:
                            BorderSide(color: Colors.blue.shade800, width: 3)),
                    minWidth: 280,
                    height: 50,
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => MusicPlayPage( poem, "ketganqiz.mp3", "O\’zbekiston respublikasi davlat madhiyasi",
                          )));
                    },
                    child: Text(
                      "MADHIYA",
                      style:
                          TextStyle(fontSize: 18, color: Colors.blue.shade800),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
