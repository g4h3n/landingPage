import 'package:flutter/material.dart';
import 'package:Orchard/minigame.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ORCHARD: music made simple',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff000000)),
          useMaterial3: false,
        ),
        home: const MyHomePage(title: 'ORCHARD'),
        debugShowCheckedModeBanner: false);
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Uri _pslink = Uri.parse('https://linktw.in/zqejGu');

  double opacity = 1;

  late Widget minigame = Minigame(levelUp: levelUp);
  int level = 0;

  @override
  void initState() {
    super.initState();
  }

  void levelUp() {
    setState(() {
      level++;
    });
  }

  Future<void> playStoreDeepLink() async {
    if (!await launchUrl(_pslink)) {
      throw Exception('Could not launch $_pslink');
    }
  }

  @override
  Widget build(BuildContext context) {
    final deviceInfo = MediaQuery.of(context);
    late var h = deviceInfo.size.height;
    late var w = deviceInfo.size.width;

    return Scaffold(
        appBar: AppBar(
          toolbarHeight: h * 0.2,
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          title: Image.asset(
            "assets/Orchard text.png",
            height: h * 0.2,
          ),
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: ListView(
            physics: const ClampingScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    children: [
                      SizedBox(
                        height: h * 0.3,
                        child: Image.asset(
                          fit: BoxFit.fitWidth,
                          "assets/fundoTitulo.jpg",
                          width: double.infinity,
                        ),
                      ),
                      Container(
                        color: Color.fromARGB(150, 50, 50, 50),
                        height: h * 0.3,
                        alignment: Alignment.center,
                        child: Text(
                          "VOCÊ PODE COMPÔR SINFONIAS COM SEU CELULAR",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              shadows: <Shadow>[
                                Shadow(
                                    offset: Offset(-2, 0),
                                    blurRadius: 10,
                                    color: Color(0xffcc00d0))
                              ],
                              fontFamily: 'Mesmerize',
                              fontSize: h * 0.04,
                              color: Color(0xffffffff)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    height: h * 0.35,
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            "assets/orchardPhone.png",
                            width: w * 0.8,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: w * 0.7,
                                height: h * 0.35,
                                padding: EdgeInsets.all(h * 0.06),
                                alignment: Alignment.centerLeft,
                                color: Color.fromARGB(200, 11, 11, 11),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("º sem experiência",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              shadows: <Shadow>[
                                                Shadow(
                                                    offset: Offset(-2, 0),
                                                    blurRadius: 6,
                                                    color: Color(0xff0a0a0a))
                                              ],
                                              fontFamily: 'Mesmerize',
                                              fontSize: h * 0.02,
                                              color: Color(0xfff0f0f0))),
                                      Text("\nº sem teoria musical",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              shadows: <Shadow>[
                                                Shadow(
                                                    offset: Offset(-2, 0),
                                                    blurRadius: 6,
                                                    color: Color(0xff0a0a0a))
                                              ],
                                              fontFamily: 'Mesmerize',
                                              fontSize: h * 0.02,
                                              color: Color(0xfff0f0f0))),
                                      Text("\nE PODE COMEÇAR AGORA MESMO",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              shadows: <Shadow>[
                                                Shadow(
                                                    offset: Offset(-2, 0),
                                                    blurRadius: 6,
                                                    color: Color.fromARGB(
                                                        255, 163, 0, 178))
                                              ],
                                              fontFamily: 'Mesmerize',
                                              fontSize: h * 0.02,
                                              color: Color(0xffcc00d0))),
                                    ]))
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.all(h * 0.02),
                      height: h * 0.6,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              const Color.fromARGB(255, 103, 0, 91)
                                  .withOpacity(0.5),
                              BlendMode.darken),
                          image: AssetImage("assets/dancing.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              "A MÙSICA È UMA LINGUAGEM NATURAL DO SER HUMANO\n",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  shadows: <Shadow>[
                                    Shadow(
                                        offset: Offset(0, 0),
                                        blurRadius: 10,
                                        color: Color(0xffCC00D0))
                                  ],
                                  fontFamily: 'Mesmerize',
                                  fontSize: h * 0.03,
                                  color: Color(0xffCC00D0))),
                          Text(
                              "cada som abre o apetite para outro que harmoniza com ele\n\n este para o pròximo\n\n e assim por diante…",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  shadows: <Shadow>[
                                    Shadow(
                                        offset: Offset(0, 0),
                                        blurRadius: 10,
                                        color: Color(0xffCC00D0))
                                  ],
                                  fontFamily: 'Mesmerize',
                                  fontSize: h * 0.02,
                                  color: Color(0xffffffff)))
                        ],
                      )),
                  Container(
                    padding: EdgeInsets.all(h * 0.02),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              blurStyle: BlurStyle.solid,
                              offset: Offset(0, 0),
                              blurRadius: 50,
                              color: Color.fromARGB(50, 255, 255, 255))
                        ]),
                    width: double.infinity,
                    child: Text("EXPERIMENTE VOCÊ MESMO",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            shadows: <Shadow>[
                              Shadow(
                                  offset: Offset(0, 0),
                                  blurRadius: 1,
                                  color: Color(0xffCC00D0))
                            ],
                            fontFamily: 'Mesmerize',
                            fontSize: h * 0.03,
                            color: Color(0xffCC00D0))),
                  ),
                  Container(
                    color: Colors.black,
                    width: double.infinity,
                    padding: EdgeInsets.only(bottom: h * 0.02),
                    child: Text(
                        "a teoria musical è um mapa que o compositor usa para garimpar emoções nas notas musicais",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            shadows: <Shadow>[
                              Shadow(
                                  offset: Offset(0, 0),
                                  blurRadius: 1,
                                  color: Color(0xffCC00D0))
                            ],
                            fontFamily: 'Mesmerize',
                            fontSize: h * 0.015,
                            color: Color(0xffffffff))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: h * 0.02, left: h * 0.02),
                        color: const Color.fromARGB(255, 36, 36, 36),
                        width: double.infinity,
                        child: Text(
                            "O ORCHARD È UM MÈTODO DE COMPOSIÇÃO DE 3 PASSOS",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                shadows: <Shadow>[
                                  Shadow(
                                      offset: Offset(0, 0),
                                      blurRadius: 10,
                                      color: Color(0xffffffff))
                                ],
                                fontFamily: 'Mesmerize',
                                fontSize: h * 0.015,
                                color: Color(0xffffffff))),
                      ),
                      Container(
                        padding:
                            EdgeInsets.only(bottom: h * 0.02, left: h * 0.02),
                        color: const Color.fromARGB(255, 36, 36, 36),
                        width: double.infinity,
                        child: Text(
                            "º sem decorar teoria\nº sem treinar coordenação motora\nº somente com seu celular",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                shadows: <Shadow>[
                                  Shadow(
                                      offset: Offset(0, 0),
                                      blurRadius: 10,
                                      color: Color(0xffffffff))
                                ],
                                fontFamily: 'Mesmerize',
                                fontSize: h * 0.015,
                                color: Color(0xffffffff))),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.black,
                    width: double.infinity,
                    height: h * 0.8,
                    alignment: Alignment.center,
                    child: minigame,
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
