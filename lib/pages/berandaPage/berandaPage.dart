// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:evolphy/pages/berandaPage/materiPage.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_svg/svg.dart";

import "../../Model/model.dart";

class BerandaPage extends StatefulWidget {
  const BerandaPage({super.key});

  @override
  State<BerandaPage> createState() => _BerandaPage();
}

class _BerandaPage extends State<BerandaPage> {
  List<ModelMateri> materi = [
    ModelMateri("assets/mekanika.svg", "Listrik Magnet", Color(0xFFF28FE6), 10),
    ModelMateri("assets/gelombang.svg", "Gelombang", Color(0xFF9187FF), 10),
    ModelMateri("assets/mekanika.svg", "Mekanika", Color(0xFFFF8C82), 10),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1c202a),
      body: ListView(
        padding: EdgeInsets.all(25),
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 25,
              right: 25,
            ),

            // margin: EdgeInsets.symmetric(horizontal: 20),

            decoration: BoxDecoration(
                color: Color(0xFF5c1d8d),
                borderRadius: BorderRadius.circular(15)),

            child: Stack(
              // clipBehavior: Clip.none,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Text(
                              "Yey, kamu berada di level 2!",
                              style: TextStyle(
                                color: Color(0xFFD7D8DB),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Text(
                            "Unit 1: Energi potensial & energi kinetik",
                            style: TextStyle(
                                color: Color(0xFFD7D8DB), fontSize: 12),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 25),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 8),
                                backgroundColor: Color(0xFFD7D8DB),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Mulai Sekarang',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF560073),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 125,
                    ),
                  ],
                ),
                Positioned(
                  right: 0,
                  top: 20,
                  child: SvgPicture.asset(
                    "assets/orang_ditangga.svg",
                    width: 107,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 52,
            decoration: BoxDecoration(
                color: Color(0xFF481585),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.info_outline,
                  color: Colors.white,
                  size: 18,
                ),
                SizedBox(width: 10),
                Flexible(
                  child: RichText(
                    softWrap: true,
                    text: TextSpan(
                      style: TextStyle(color: Colors.white, fontSize: 12),
                      children: [
                        TextSpan(text: 'Saatnya untuk mengerjakan soal '),
                        TextSpan(
                          text: 'TryOut',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' Elektrodinamika'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Modul Materi",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(100),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MateriPage(materi: materi),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Lihat semua ",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 236,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: materi.length,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  return Container(
                    width: 165,
                    height: 236,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: materi[index].color,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 65,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white.withOpacity(0.32),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.diamond,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    materi[index].diamond.toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              materi[index].title,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            )
                          ],
                        ),
                        Positioned(
                          right: -15,
                          bottom: 25,
                          child: SvgPicture.asset(
                            materi[index].image,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 15,
                  );
                }),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xFF252836),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Color(0xFFB0B0B0), width: 0.1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          constraints: BoxConstraints(maxWidth: 500),
                          decoration: BoxDecoration(
                            color: Color(0xFFebb0ff),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Image.asset(
                            "profil_orang_diforum.png",
                            height: 31,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Muhammad Fikran",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    Text(
                      "2 hari",
                      style: TextStyle(
                          color: Color(0xFFB0B0B0),
                          fontWeight: FontWeight.w500,
                          fontSize: 11),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                SizedBox(height: 11),
                Text(
                  "Aku kesulitan menemukan cara pengerjaan di bagian rangkaian listrik. Apakah ada yang bisa membantu?",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 11),
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 17,
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.chat_bubble_outline,
                      color: Colors.white,
                      size: 17,
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.bookmark_border_outlined,
                      color: Colors.white,
                      size: 17,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
