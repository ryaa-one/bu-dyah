import 'package:flutter/material.dart';

void main() {
  runApp(TugasMandiri());
}

class TugasMandiri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        backgroundColor: Color(0xFFF44336),
        elevation: 0,
        title: Text("MyApp", style: TextStyle(color: Colors.white)),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            topMenu(),
            featuredNews(),
            newsItem(),
            newsItem(),
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }

  Widget topMenu() {
    return Container(
      height: 50,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "BERITA TERBARU",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          Text(
            "PERTANDINGAN HARI INI",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }

  Widget featuredNews() {
    return Container(
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xFF906D8B)),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(4)),
            child: Image.network(
              "https://images.unsplash.com/photo-1546519638-68e109498ffc",
              height: 220,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: EdgeInsets.all(12),
            child: Center(
              child: Text(
                "Costa Mendekat Ke Palmeiras",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          Container(
            height: 50,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(color: Color(0xFFE03FFD)),
            child: Text("Transfer", style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }

  Widget newsItem() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xFF7A8F89)),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color(0xFF7A8F89), width: 1),
              ),
            ),
            child: Row(
              children: [
                Image.network(
                  "https://images.unsplash.com/photo-1574629810360-7efbbe195018",
                  width: 120,
                  height: 90,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.all(8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Barcelona  Feb 13, 2021",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
