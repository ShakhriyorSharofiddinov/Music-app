import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class LifeScreen extends StatefulWidget {
  const LifeScreen({super.key});

  @override
  State<LifeScreen> createState() => _LifeScreenState();
}

class _LifeScreenState extends State<LifeScreen> {


  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    super.initState();

    setAudio();

    audioPlayer.onPlayerStateChanged.listen((event) {
      setState(() {
        isPlaying = event == PlayerState.playing;
      });
    });
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });
    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  Future setAudio() async {
    audioPlayer.setReleaseMode(ReleaseMode.loop);
    final url = await AudioCache(prefix: 'assets/').load("ab.mp3");
    audioPlayer.setSourceUrl(url.path);
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(":");
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            width: double.infinity,
            child:Padding(
              padding: const EdgeInsets.all(2.0),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.all(4),
                          margin: const EdgeInsets.all(8.0),
                          width: 250,
                          height: 270,
                          color: Colors.blue.shade800,
                          child: const Image(
                            image: AssetImage("assets/images/Abdulla.jpg"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                        width: 300,
                       child: const Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(.0),
                              child: Text(
                                "Abdulla Oripov",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text("21.03.1941 - 05.10.2016",
                                  style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.bold)),
                            ),
                          ],
                        )),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 300,
                        margin: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blue, width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Slider(
                                  activeColor: Colors.blue,
                                  inactiveColor: Colors.blue.shade100,
                                  min: 0,
                                  max: duration.inSeconds.toDouble(),
                                  value: position.inSeconds.toDouble(),
                                  onChanged: (value) async {
                                    final position = Duration(seconds: value.toInt());
                                    await audioPlayer.seek(position);
                                    await audioPlayer.resume();
                                  },
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        formatTime(position),
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        width: 100,
                                      ),
                                      Text(
                                        formatTime(duration - position),
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.blue,
                              child: IconButton(
                                icon: Icon(
                                  isPlaying ? Icons.pause : Icons.play_arrow,
                                ),
                                iconSize: 18,
                                onPressed: () async {
                                  if (isPlaying) {
                                    await audioPlayer.pause();
                                  } else {
                                    await audioPlayer.resume();
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.all(10),
                        margin: const EdgeInsets.all(6.0),
                        width: double.infinity,
                         child: const Text(
                          "        Abdulla Oripov 1941-yilning 21-martida, ya\’ni Yilboshi bayrami kuni Qashqadaryo viloyati Koson tumanidagi Neko\’z qishlog\’ida tug\’ildi."
                              " Qishloq Qo\’ng\’irtov etagiga o\’rnashgan bo\’lib, oqar suv taqchil bo\’lsa-da, seryomg\’ir kelgan yillarda ko\’kat-u maysalarga ko\’milib qoladigan kengish joy edi. Bu haqda shoirning o\’zi:"
                              " \“Ayniqsa, bahor paytlarida bu yerlarga yog\’in ko\’p tushar, Qo\’ng\’irtov etaklari ming xil o\’t-o\’lan, chuchmoma-yu qizg\’aldoqlar bilan, quyonto\’pig\’-u ismaloq bilan, karrag-u hazorisfand bilan, qo\’zigullar bilan qoplanar, atrof-tevarak jannatiy bir manzara kasb etardi. Sel suvlari to\’planib qolgan kichik-kichik ko\’llarni \“qoq\” deyishardi."
                              " Uning toza suvini odamlar tashib ichishar, bola-baqra chuchmomay-u ismaloq, zamburug\’ terib, Qo\’ng\’irtov etaklarida kunlarini kech qilar edi\”, — deb yozadi. Ana shunday go\’zal maskanda tug\’ilib o\’sgan Abdulla Oripovning otasi Orifboy Ubaydulla o\’g\’li ishbilarmon dehqonlardan bo\’lib, jamoa xo\’jaligi raisi edi."
                              " Onasi Turdixol momo ko\’pchilik o\’zbek ayollari singari sarishta, mehnatkash, mehribon, g\’oyat ta\’sirchan va ezgulikka tashna ayol bo\’lgan. Oilada to\’rt o\’g\’il, to\’rt qiz bo\’lib, Abdulla o\’g\’illarning kenjasi edi. "
                              "Bolaligi qishloqdagi boshqa tengdoshlariniki qatori o\’tdi: qo\’y boqdi, suv tashidi, pichan o\’rdi, yantoq chopdi, somon to\’pladi. "
                              "Ayni vaqtda, u boshqacharoq ham edi: qandaydir xayolchan, serta\’sir, o\’ychil, kitobga haddan tashqari ko\’ngil qo\’ygan. "
                              "Abdulla hali maktabga bormay turib, qandaydir so\’zlarni bir-biriga uyqash qilib aytib yurishni xush ko\’rar, so\’zning mazmunidan ham ko\’ra ohangi uni rom etardi. Buni shoir keyinchalik shunday eslaydi: \“...birinchi she\’rlar yoza boshlaganimga nima turtki bo\’lganini aniq bilmayman. Har holda so\’zlarni qofiyalashga ishqiboz bo\’lib qolganim esimda. Balki zerikkanimdan, balki zavqim toshib, nimadir yozgim kelaverardi."
                              " Fikr esa yo\’q. Yozmaslikning ham iloji yo\’q\”.\n\n        Abdulla Oripov o\’z qishlog\’idagi yetti yillik maktabda o\’qiy boshladi. 1958- yilda qo\’shni Tayzan ovulidagi o\’rta maktabni oltin medal bilan bitirgan yigit Toshkent davlat universiteti (hozirgi O\’zMU) \“O’zbek filologiyasi\” "
                              "fakulteti jurnalistika bo\’limiga o\’qishga kirib, uni 1963- yilda imtiyozli diplom bilan bitirdi. "
                              "Abdulla Oripov oliy maktabni tugatgach, Toshkentdagi sobiq \“Yosh gvardiya\” nashriyotiga muharrir bo\’lib ishga kiradi. "
                              "Bu yerda to\’rt yil ishlagach, 1967—1974-yillarda G\’afur G\’ulom nomidag\’i nashriyotda muharrir, katta muharrir bo\’lib xizmat qiladi. "
                              "1974—1976- yillarda \“Sharq yulduzi\” jurnalida bo\’lim boshlig\’i bo\’ladi. "
                              "Olovli she\’riyati bilan muxlislarining mehrini qozongan shoir 1976—1982- yillar orasida O\’zbekiston Yozuvchilar uyushmasining adabiy maslahatchisi sifatida adabiyotga endi kirib kelayotgan yosh ijodkorlarga rahnamolik qildi. "
                              "1982—1983- yillarda O\’zbekiston Yozuvchilar uyushmasining Toshkent viloyat bo\’limida mas\’ul kotib bo\’lib faoliyat ko\’rsatdi."
                              " 1983- yilda shoir o\’quvchilarning jurnali \“Gulxan\”ning bosh muharriri bo\’ldi va u yerda 1985-yilgacha, ya\’ni O\’zbekiston Yozuvchilar uyushmasining kotibi lavozimiga o\’tguncha ishladi. "
                              "Uyushmaning kotibi sifatida uch yil ishlagan Abdulla Oripov 1988-yilda O\’zbekiston Respublikasi mualliflik huquqini himoya qilish qo\’mitasi raisi vazifasiga o\’tkazildi. 1996-yilning mart oyidan 2009 yilga qadar shoir O\’zbekiston Yozuvchilar uyushmasining raisi vazifasida mehnat qildi.\n\n       Abdulla Oripov 1983- yilda Hamza nomidagi davlat mukofotiga sazovor bo\’ldi. Shu yili unga \“O\’zbekiston xalq shoiri\” unvoni berildi."
                              " 1994-yilda Alisher Navoiy nomidagi respublika davlat mukofotiga loyiq ko\’rildi, 1998-yilda esa shoir \“O\’zbekiston Qahramoni\” unvoni bilan taqdirlandi."
                              " Abdulla Oripov O\’zbekiston Respublikasi davlat madhiyasining muallifidir."
                              " Birinchi marta respublika matbuotida \“Qushcha\” deb atalgan she\’ri chiqqan paytda Abdulla Oripov talaba edi. Shoirning birinchi she\’rlar to\’plami \“Mitti yulduz\” esa 1965-yilda chop etilgan. "
                              "Undan keyin \“Ko\’zlarim yo\’lingda\” (1967), \“Onajon\”  (1969), \“Ruhim\”  (1971), \“O\’zbekiston\”, \“Qasida\” (1972), \“Xotirot\” (1974), \“Yurtim shamoli\” (1974), \“Jannatga yo\’l\” (1978), \“Hayrat\” (1979), \“Hakim va ajal\” (1980), \“Najot qal\’asi\” (1981), \“Yillar armoni\” (1983), \“Haj daftari\” (1992), \“Saylanma\” (1996), \“Sohibqiron\” (1996), to\’rt tomlik \“Tanlangan asarlar\” (2000—2001) singari qator kitoblari bosilib chiqdi."
                              " Abdulla Oripov xalqimizni dunyo adabiyotining sara namunalari bilan tanishtirish borasida ham talay ishlarni amalga oshirgan."
                              " U Dantening \“Ilohiy komediya\” asarini, L.Ukrainka, T.Shevchenko, N.Nekrasov, Q.Quliev, R.Hamzatov singari shoirlarning she\’rlarini mahorat bilan o\’zbekchaga o\’girgan. O\’zbekiston Xalq shoiri, O\’zbekiston qahramoni Abdulla Oripov 2016-yil 5-noyabr kuni ertalab AQShning Xyuston shahrida 75 yoshida vafot etdi.",
                          style: TextStyle(fontSize: 18),
                           strutStyle: StrutStyle(
                             leading: 1,
                           ),
                        )),
                  ],
                ),
              ),
            )
        ),
      ),
    );
  }
}

