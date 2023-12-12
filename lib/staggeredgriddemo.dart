import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';








class Staggereddemo extends StatefulWidget {
  const Staggereddemo({super.key});

  @override
  State<Staggereddemo> createState() => _StaggereddemoState();
}

class _StaggereddemoState extends State<Staggereddemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Card(
        shadowColor: Colors.black,
        color: Colors.amberAccent[100],
        child: SingleChildScrollView(
          child: StaggeredGrid.count(
            crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children:  [
              StaggeredGridTile.count(
                crossAxisCellCount: 2,

                mainAxisCellCount: 2,
                child: Container(color: Colors.blueAccent,

                child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Government_Secretariat_of_Kerala_001.jpg/209px-Government_Secretariat_of_Kerala_001.jpg"),),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: Container(color: Colors.lightGreen,
                
                child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Munnar_hillstation_kerala.jpg/209px-Munnar_hillstation_kerala.jpg"),),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Container(color: Colors.white,
                child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/BACKWATERS_OF_KUTTANAD.jpg/420px-BACKWATERS_OF_KUTTANAD.jpg"),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Container(color: Colors.blueGrey,
                child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Jatayu_adventure_centre.jpg/209px-Jatayu_adventure_centre.jpg"),),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Container(color: Colors.white,

                child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/The_View_of_the_Athirapally_Falls_during_the_onset_of_Monsoon.jpg/209px-The_View_of_the_Athirapally_Falls_during_the_onset_of_Monsoon.jpg"),),
              ),
            ],
          ),
        ),
      )
    );
  }
}
