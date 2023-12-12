import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Stg{
  late String img;
  Stg({required this.img});
}


class Newstg extends StatefulWidget {
  const Newstg({super.key});

  @override
  State<Newstg> createState() => _NewstgState();
}

class _NewstgState extends State<Newstg> {
  List<Stg>StgList=[Stg(img: "https://t3.ftcdn.net/jpg/01/21/81/86/240_F_121818673_6EID5iF76VCCc4aGOLJkd94Phnggre3o.jpg"),Stg(img: "https://t4.ftcdn.net/jpg/00/69/68/43/240_F_69684390_68FDgnqt1cgM9J27Gdu9meGaJGPKIMHF.jpg"),Stg(img: "https://t4.ftcdn.net/jpg/00/69/68/43/240_F_69684390_68FDgnqt1cgM9J27Gdu9meGaJGPKIMHF.jpg"),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MasonryGridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemCount: StgList.length,
        itemBuilder: (context, index) {
          Stg s=StgList[index];
          return Tile(
            index: index,
            extent: (index % 5 + 1) * 100,
        img:s.img
          );
        },
      ),

    );


  }
}
class Tile extends StatelessWidget {
  late double extent;
  late int index;
late String img;
   Tile({super.key, required this.index, required this.extent, required this.img});

  @override

  Widget build(BuildContext context) {
    return  Container(
      height: extent,
      color: Colors.blueGrey,

      child: Center(child: Image.network("${img}",fit: BoxFit.cover,),
      ),

    );
  }
}

