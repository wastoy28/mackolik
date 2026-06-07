import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0B0F14),
      appBar: AppBar(
        title: const Text("menu"),
        backgroundColor: Color(0xFF0B0F14),
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.timer, color: Colors.white),
            title: Text(
              "canlı sonuçlar",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(Icons.menu, color: Colors.white),
            title: Text("puan durumu", style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.handshake, color: Colors.white),
            title: Text(
              "iddia programı",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(Icons.tv, color: Colors.white),
            title: Text("TV rehberi", style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.calculate, color: Colors.white),
            title: Text("puanmatik", style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.eleven_mp_outlined, color: Colors.white),
            title: Text("benim 11'im", style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.list, color: Colors.white),
            title: Text(
              "UEFA Ülke be Külüp Puanı",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(Icons.emoji_events, color: Colors.white),
            title: Text(
              "FIFA Dünya Sıralaması",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
