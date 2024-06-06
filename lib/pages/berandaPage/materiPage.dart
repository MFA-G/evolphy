// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "../../Model/model.dart";

class MateriPage extends StatelessWidget {
  final List<ModelMateri> materi;
  const MateriPage({Key? key, required this.materi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1c202a),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Text(
            'Modul Materi',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        centerTitle: true,
        leading: Container(
          margin: EdgeInsets.only(left: 15, top: 15),
          // Jarak antara ikon dan background
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.24), // Warna background
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ), // Ikon
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Color(0xFF1c202a),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: materi.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 275,
              childAspectRatio: 0.7,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (context, index) => Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: materi[index].color,
              borderRadius: BorderRadius.circular(8),
            ),
            child: LayoutBuilder(builder: (context, constraints) {
              return Stack(
                clipBehavior: Clip.none,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 65,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: constraints.maxWidth * 0.12,
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    right: -15,
                    bottom: constraints.maxWidth * 0.25,
                    child: SvgPicture.asset(
                      materi[index].image,
                      width: constraints.maxWidth,
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}

// ListView.builder(
          //   itemCount: materi.length,
          //   itemBuilder: (context, index) {
          //     return ListTile(
          //       leading: SvgPicture.asset(materi[index].image),
          //       title: Text(materi[index].title),
          //       tileColor: materi[index].color,
          //       trailing: Text('${materi[index].diamond} 💎'),
          //     );
          //   },
          // ),
