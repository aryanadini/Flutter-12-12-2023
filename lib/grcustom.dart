import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'newstaggered.dart';

class Grd extends StatefulWidget {
  const Grd({super.key});

  @override
  State<Grd> createState() => _GrdState();
}

class _GrdState extends State<Grd> {
  List<Grcu>grcList=[Grcu(img: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/BACKWATERS_OF_KUTTANAD.jpg/420px-BACKWATERS_OF_KUTTANAD.jpg"),Grcu(img: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Government_Secretariat_of_Kerala_001.jpg/209px-Government_Secretariat_of_Kerala_001.jpg"),Grcu(img: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Kochi_Skyline.jpg/209px-Kochi_Skyline.jpg"),Grcu(img: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/The_View_of_the_Athirapally_Falls_during_the_onset_of_Monsoon.jpg/209px-The_View_of_the_Athirapally_Falls_during_the_onset_of_Monsoon.jpg"),
  Grcu(img: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Munnar_hillstation_kerala.jpg/209px-Munnar_hillstation_kerala.jpg"),Grcu(img: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Thiruvananthapuram_Padmanabhaswamy_Temple.jpg/209px-Thiruvananthapuram_Padmanabhaswamy_Temple.jpg")
  
  
  ];
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
        gridDelegate: SliverQuiltedGridDelegate(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          repeatPattern: QuiltedGridRepeatPattern.inverted,
          pattern: [
            QuiltedGridTile(2, 2),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 2),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          childCount:grcList.length,
              (context, index) {
               return Tile(index: index, img: grcList[index].img,);
              }
        ),
      )
    );
  }
}
class Tile extends StatelessWidget {
  
  late int index;
  String? img;
  double? extent;
  
 Tile({super.key, required this. index,this.img,this.extent});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: extent,
      color: Colors.blueGrey,

      child: Center(child: Image.network("${img}",fit: BoxFit.cover,),
      ),
      
    );
  }
}
class Grcu{
  late String img;
  Grcu({required this.img});
  
}