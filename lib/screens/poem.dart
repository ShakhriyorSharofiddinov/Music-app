import 'package:flutter/material.dart';
import 'package:music/screens/musicplay_page.dart';

class PoemScreen extends StatefulWidget {
  const PoemScreen({super.key});

  @override
  State<PoemScreen> createState() => _PoemScreenState();
}

class _PoemScreenState extends State<PoemScreen> {

  List<String> poemName = [
    "O\’zbekiston",
    "Men nechun sevaman O\'zbekistonni",
    "Ka\’batulloh",
    "O\‘zbekman",
    "Sen qaydan bilasan...",
    "Dunyo",
    "Savob",
  ];

  List<String> poems = [
    "Yurtim, senga she\’r bitdim bu kun,\nQiyosingni topmadim aslo.\nShoirlar bor,o\’z yurtin butun \nOlam aro atagan tanho.\nUlar she\’ri uchdi ko\’p yiroq,\nQanotida kumush diyori,\nBir o\’lka bor dunyoda, biroq\nBitilmagan dostondir bori\nFaqat ojiz qalamim manim,\nO\’zbekiston, Vatanim manim.\n\nYurmasman hech behishtni izlab,\nTopolmasam chekmasman alam.\nO\’tirmasman ertaklar so\’zlab,\nMusallo deb yo\’nmasman qalam.\nKo\’klamingdan olib sururni,\nDovrug\’ soldi ustoz Olimjon,\nG\’afur G\’ulom tuygan g\’ururni\nQilmoq mumkin dunyoga doston.\nOlis tarix qadamim manim,\nO\’zbekiston, Vatanim manim.\n\nKechmishing bor chindan ham uzoq,\nIlg\’ay olmas barchasin ko\’zim.\nMaqtamasman moziyni biroq,\nO\’tmishingni o\’ylayman bir zum.\nZabtga olib keng Osiyoni,\nBir zot chiqdi mag\’rur, davongir,\nIkki asr yarim dunyoni\nZir qaqshatdi Buyuk jahongir.\nAytgum, bu kun, u manim, manim.\nO\’zbekiston, Vatanim manim.\n\nBobolardan so\’z ketsa zinhor,\nBir kalom bor gap avvalida.\nOsmon ilmi tug\’ilgan ilk bor\nKo\’ragoniy jadvallarida.\nQotil qo\’li qilich soldi mast,\nQuyosh bo\’lib uchdi tilla bosh.\nDo\’stlar, ko\’kda yulduzlar emas,\nUlug\’bek ko\’zidagi yosh.\nErda qolgan, o, tanim manim,\nO\’zbekiston, Vatanim manim.\n\nKo\’z oldimdan kechar asrlar,\nKo\’z-ko\’z etib nuqsu chiroyin.\nSarson o\’tgan necha nasllar,\nTopolmasdan tug\’ilgan joyin.\nAmerika — sehrli diyor,\nUxlar edi Kolumb ham hali,\nDengiz ortin yoritdi ilk bor,\nBeruniyning aql mash\’ali.\nKolumbda bor alamim manim,\nO\’zbekiston, Vatanim manim.",
    "Men nechun sevaman O\'zbekistonni,\nTuprog\'in ko\'zimga aylab to\'tiyo.\nNechun vatan, deya yeru osmonin,\nMuqaddas atayman, atayman tanho.\n\nAslida dunyoda tanho nima bor?\nPaxta o\'smaydimi o\'zga elda yo?\nYoki quyoshimi sevgimga sabab?\nAxir quyoshli-ku, butun Osiyo.\n\nMen nechun sevaman O\'zbekistonni,\nBog\'larin jannat, deb ko\'z-ko\'z etaman.\nNechun ardoqlarkan tuprog\'ini men,\nO\'paman, tuprog\'ing bebaho, Vatan!\n\nAslida tuproqni odil tabiat,\nTaqsim aylagan-ku, yer yuziga teng\nNechun bu tuproq, deb yig\'ladi Furqat,\nO, Qashqar tuprog\'i, qashshoqmiding sen?\n\nMen nechun sevaman O\'zbekistonni?\nSababini aytgin, desalar menga.\nShoirona, go\'zal so\'zlardan oldin,\nMen ta\'zim qilaman ona xalqimga:\n\nXalqim, tarix hukmi seni agarda,\nMangu muzliklarga eltgan bo\'lsaydi,\nQorliklarni makon etgan bo\'lsayding,\nMehrim bermasmidim o\'sha muzlarga?\n\nVatanlar, Vatanlar, mayli, gullasin,\nBog\' unsin mangulik muzda ham, ammo,\nYurtim, seni faqat boyliklaring chun\nSevgan farzand bo\'lsa, kechirma aslo!",
    "Hanuz biri ikki bo\ʻlmagan eldan\nKeldim, madad bergil, yo Ka\’batulloh.\nBag\ʻri xun, tolei kulmagan eldan\nKeldim, madad bergil, yo Ka\’batulloh.\n\nBir zamon uning ham bo\ʻlgan qudrati,\nDunyoni yoritgan zehni, fikrati.\nHatto qirg\ʻoqlarni buzgan shiddati,\nKeldim, madad bergil, yo Ka\’batulloh.\n\nTegirmon toshidek aylandi taqdir,\nKarvonlar to\ʻzg\ʻidi, sarbonlar so\ʻqir.\nBandi bo\ʻlgan edi ulug\ʻ yurt, axir,\nKeldim, madad bergil, yo Ka\’batulloh.\n\nAvj oldi ig\ʻvo-yu firib, razolat,\nYig\ʻladi bir chetda yetim adolat.\nBormi saodatga, axir, kafolat,\nKeldim, madad bergil, yo Ka\’batulloh.\n\nXor bo\ʻldi Vatanda kimki ilmi bor,\nBirovlar zar bilan topdi e\’tibor.\nHiylagar ko\ʻpaydi, ko\ʻpaydi makkor,\nKeldim, madad bergil, yo Ka\’batulloh.\n\nDuch kelgan sanamga sig\ʻindik gohi,\nBizga keng ochildi Shayton dargohi.\nAxir, nima edi elning gunohi,\nKeldim, madad bergil, yo Ka\’batulloh.\n\nMagar bo\ʻri ekan odamga odam,\nBir-birin boshini yegay damodam\nHaqiqat yo\ʻq joyda yashnagay yolg\ʻon,\nKeldim, madad bergil, yo Ka\’batulloh.\n\nQay zamon odamlar bad fe\’lin sezdim\nVafoli do\ʻst izlab dunyoni kezdim.\nTopmadim, topmadim, baridan bezdim\nKeldim, madad bergil, yo Ka\’batulloh.\n\nQoshingda tiz cho\ʻkib turibman shu dam\nDilimda iltijo, qo\ʻlimda qalam.\nShafqating ayama mendan ham, Egam,\nKeldim, madad bergil, yo Ka\’batulloh.\n\nShukrona ayturman o\ʻzingga, yo Rabb,\nYuz burdik hidoyat yo\ʻliga qarab.\nHaq degan yurtimning baxtini so\ʻrab\nKeldim, madad bergil, yo Ka\’batulloh.",
    "Yangi bir asrning ostonasi bu,\nYetishdim umrimning qutlug\ʻ yoshiga.\nTilimda shukrona, dilimda g\ʻulu,\nTarix sarkotibin keldim qoshiga:\n—Mana, men - O\ʻzbekman, qo\ʻlimda tug\‘im\nVa barcha a\’molim bitilgan kitob.\nShuning ichidadir borim va yo\ʻg\ʻim,\nShuning ichidadir men uchun oftob.\n\nO\ʻzbekman, inshoolloh, iymonim butun\nTilim qisiq emas bashariyatdan.\nKimgadir tengdirman, kimdandir ustun\nZuvalam qorilgan samimiyatdan.\n\nO\ʻzbekman, gohida iqbolim kulib,\nGohida o\ʻzimdan chiqqan ofatim.\nDunyoni olsam-da jahongir bo\ʻlib,\nGo\ʻdak yig\ʻisiga yo\ʻqdir toqatim.\n\nO\ʻzbekman, qanchalik jafo chekmayin,\nO\ʻzimga haq bo\ʻldim, o\ʻzimga haqman.\nYashadim yovlarga bo\ʻyin egmayin,\nBu kun o\ʻz erkiga erishgan xalqman.\n\nIstiqlol, ketma yurt peshonasidan,\nTole, tark etmagin bizni ilohim.\nMana, yangi asr ostonasidan\nO\ʻtdim. Bismillohir rahmonir rohim.",
    "Sen qaydan bilasan, balki yulduzlar\nMenga sirlarini so\'ylayotgandir.\n\nSen qaydan bilasan, balki bu ko\'zlar\nUnsiz bir qo\'shiqni kuylayotgandir.\n\nSen qaydan bilasan, balki keng olam\nShu mo\'jaz qalbimga bo\'ylayotgandir.\n\nSen qaydan bilasan, balki meni ham\nKimdir qaydadir jim o\'ylayotgandir...",
    "Bir kimsa umrining so\ʻngiga qadar,\nYig\ʻdi mol-u dunyo, yig\ʻdi siym-u zar.\n\nUni qiziqtirdi na do\ʻstning holi,\nVa na qo\ʻshnisining o\ʻksik ahvoli.\n\nU chindan mol-mulkning jilovin tutdi,\nFaqat nafs ortidan ot surib o\ʻtdi.\n\nBir kuni ba hukmi taqdiri azal,\nShamshirin ko\ʻtarib keldi-ku ajal.\n\nEndi na siym-u zar qutqara olur,\nNa billur, na gavhar qutqara olur.\n\nRozi yo norizo - farqi yo\ʻq mutloq,\nBunday choq chorasiz hatto do\ʻst-o\ʻrtoq.\n\nBeshafqat ajalga berar ekan tan,\nU dedi: «Shu ekan, dunyo shu ekan».\n\nMarhumga marhumlik ko\ʻrilgay loyiq,\nUni qabristonga eltdi xaloyiq.\n\nUyum tuproq bo\ʻldi quvonchi-g\ʻami,\nKimdir boqib dedi: «Shunga shunchami»...",
    "Avji saratonda hansirab, yonib,\nQovrilib olovli yo\'llar taftida,\nMuzdayin buloqdan suv ichgach qonib,\nHordiq olganmisan chinor tagida? \n\nRuhingni safoyu taningda mador,\nUmidbaxsh qo\'shiqlar kuylaganmisan?\nO\'sha payt, o\'sha on hech qursa bir bor\nChinorni kim ekkan – o\'ylaganmisan?\n\nRo\'baro\' kelding sen toshqin daryoga,\nQolding sohil uzra chorasiz, giryon,\nLekin yo\'liqqanday ajib ro\'yoga,\nQarshingda bir ko\'prik bo\'ldi namoyon.\n\nBamisli uzala tushgan xor vujud,\nKo\'targay u turfa insonlar korin.\nO\'tding sen daryodan salomat va but,\nLekin o\'yladingmi ko\'prik me\'morin?\n\nO\'rmonlar bag\'rida sayr etgan sayyoh,\nChangalzor qo\'ynida sargardon ovchi,\nMo\'jaz boshpanani ko\'rdingmi nogoh,\nUni qoldirmishdir qay bir yo\'lovchi.\n\nQoldirmish u senga qaro kun uchun,\nBir chimdim tuz bilan bir juft chaqmoq tosh.\nO\'ylab ko\'rganmisan, bu himmat nechun,\nO\'ylab ko\'rganmisan, kimdir u g\'amdosh?\n\nHa, inson umrining kechmishi ajab,\nGoh, to\'ng\'ar, goho u yashnar qulf urib…\nO, balki qaysi bir fidoyi sabab,\nYuribsan sen hayot nash\'asin surib.\n\nAyt, axir o\'zing ham to borsan sobit,\nKimsaga nasiba uzatganmisan?\nKo\'changdan lapanglab o\'tganda tobut,\nSen uni to\'rt qadam kuzatganmisan?\n\nChorasiz bir inson uchragan damda,\nUnsiz so\'rog\'iga qildingmi javob?\nAyt-chi, bilarmisan, yorug\' olamda\nBularning barchasi atalgay savob.\n\nYo\'q, yo\'q, o\'zga erur bid\'at va karam,\nHimmatu saxovat tiriklarga xos.\nBobolar beta\'ma qurgan dunyo ham\nAsli savob uchun qolgan bir meros\n\nKimdir tuzar uni, kimdir buzadi,\nKImdir borini ham qiladi barbod.\nKimdir ta\'ma bilan dunyo kezadi,\nKimdir o\'ksuk dilni† etadi obod.\n\nSavob deb ingraydi dunyomiz behol,\nZordir u najotbaxsh hislar sehriga.\nJanglarda toliqqan majruh zot misol,\nSuyanib yashar u inson mehriga.\n\nTo hayot ekanmiz savobga zormiz,\nYilt etgan shu\'ladan dillar fayziyob.\nGoh ga\'mgin, goh esa umidga yormiz,\nYo\'qolmasa deymiz dunyoda savob.\n\nAxir uning bilan gullagay ochun,\nAxir uning bilan umrlar shoyon.\nFaqat savob borki, jahon bus-butun,\nFaqat savob borki, azizdir Inson!",
  ];
  List<String> poemOfMusics = [
    "ketganqiz.mp3",
    "ketganqiz.mp3",
    "ketganqiz.mp3",
    "ketganqiz.mp3",
    "ketganqiz.mp3",
    "ketganqiz.mp3",
    "ketganqiz.mp3",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.blue.shade800,
          leading: SizedBox(),
          centerTitle: true,
          title: Text("She'riy to'plamlar",style: TextStyle(fontSize: 24),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            itemCount: poemName.length,
            itemBuilder: (context, index) {
              return myCard(poemName[index],poems[index],poemOfMusics[index]);
            },
          ),
        ),
      ),
    );
  }

  Widget myCard(String poemName,String poem,String song) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Colors.blue.shade800, width: 2)),
        minWidth: 280,
        height: 60,
        color: Colors.white,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => MusicPlayPage(poem,song,poemName)));
        },
        child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              poemName,
              style: TextStyle(fontSize: 20, color: Colors.blue.shade800, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
