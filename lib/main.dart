import 'package:flutter/material.dart';
import 'package:mackolik/menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: anasayfa());
  }
}

class anasayfa extends StatefulWidget {
  const anasayfa({super.key});

  @override
  State<anasayfa> createState() => _anasayfaState();
}

class _anasayfaState extends State<anasayfa> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0B0F14),

      appBar: AppBar(
        backgroundColor: Color(0xFF0B0F14),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Menu()),
            );
          },
        ),
        title: Text(
          "mackolik",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Icon(Icons.search, color: Colors.white),

          SizedBox(width: 5),
        ],
      ),

      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(horizontal: 50),
            height: 50,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 134, 141, 150),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.arrow_back_ios, size: 18),
                Icon(Icons.handshake),
                Icon(
                  Icons.sports_soccer,
                  color: const Color.fromARGB(255, 12, 13, 13),
                ),
                Icon(Icons.menu),
                Icon(Icons.arrow_forward_ios, size: 18),
              ],
            ),
          ),

          SizedBox(
            height: 70,
            child: Row(
              children: [
                SizedBox(width: 5),
                Container(
                  margin: EdgeInsets.all(6),
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      " 15\nÇar",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  height: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      dateText("cmt\n06.06"),
                      dateText("paz\n07.06"),
                      dateText("Bugün\n08.06", selected: true),
                      dateText("sal\n09.06"),
                      dateText("çar\n10.06"),
                    ],
                  ),
                ),
                Spacer(),

                Container(
                  width: 80,
                  height: 40,
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 51, 51, 51),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.grey, size: 18),
                      SizedBox(width: 4),
                      Expanded(
                        child: Theme(
                          data: Theme.of(context).copyWith(
                            textSelectionTheme: TextSelectionThemeData(
                              selectionHandleColor: Colors.transparent,
                              selectionColor: Colors.grey,
                            ),
                          ),
                          child: TextField(
                            controller: _searchController,
                            style: TextStyle(color: Colors.white, fontSize: 12),
                            cursorColor: Colors.white,

                            decoration: InputDecoration(
                              hintText: "Maç ara",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                              border: InputBorder.none,
                              isDense: true,
                              contentPadding: EdgeInsets.zero,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5),
              ],
            ),
          ),

          Expanded(
            child: ListView(
              children: [
                leagueCard("Dünya - Hazırlık Maçları Ülkeler", [
                  ["02:00", "Kolombiya", "Ürdün"],
                  ["21:45", "Hollanda", "Özbekistan"],
                  ["22:10", "Fransa", "Kuzey İrlanda"],
                ]),
                leagueCard("Dünya - U21 Hazırlık Maçları Ülkeler", [
                  ["16:00", "Japonya U21", "Ukranya U21"],
                  ["18:00", "Belarus U21", "Kazakistan U21"],
                  ["19:00", "Norveç U21", "Finlandiya U21"],
                  [
                    "19:00",
                    "Amerika Birleşik Devletleri U21",
                    "Özbekistan U21",
                  ],
                  ["19:15", "İtalya U21", "Arnavutluk U21"],
                ]),
                leagueCard("Dünya - Hazırlık Ülkeler Kadınlar", [
                  ["18:00", "Nijerya(k)", "Senegal(k)"],
                  ["19:00", "Haiti(k)", "Ekv.Gin.(k)"],
                  ["22:00", "Fildişi Sahili(k)", "Yeşil Burun(k)"],
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget dateText(String text, {bool selected = false}) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        border: selected
            ? Border(bottom: BorderSide(color: Colors.green, width: 3))
            : null,
      ),
      child: Text(
        text,
        style: TextStyle(color: selected ? Colors.white : Colors.grey),
      ),
    );
  }

  Widget leagueCard(String title, List matches) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFF1A1F25),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(Icons.public, color: Colors.white54, size: 18),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(Icons.star, color: Colors.amber, size: 18),
              ],
            ),
          ),

          for (var m in matches) matchRow(m[0], m[1], m[2]),
        ],
      ),
    );
  }

  Widget matchRow(String time, String t1, String t2) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Row(
        children: [
          SizedBox(
            width: 50,
            child: Text(time, style: TextStyle(color: Colors.grey)),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(t1, style: TextStyle(color: Colors.white)),
                Text(t2, style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Icon(Icons.star_border, color: Colors.white54),
        ],
      ),
    );
  }
}
