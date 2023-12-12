import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Stk{
  late String offer;
  late String name;
  late String offerprice;
  late String orgprice;
  late String img;
  late bool fav;
  Stk({required this.name,required this.offerprice,required this.img,required this.orgprice,required this.offer,required this.fav});
}



class Mystack extends StatefulWidget {
  const Mystack({super.key});

  @override
  State<Mystack> createState() => _MystackState();
}

class _MystackState extends State<Mystack> {

  List<Stk>stkList=[Stk(name: "Wood land-New", offerprice: "Offer Price : 2500", img: "https://t3.ftcdn.net/jpg/01/21/81/86/240_F_121818673_6EID5iF76VCCc4aGOLJkd94Phnggre3o.jpg",  orgprice: 'Price : 4000', offer: '30% offer', fav: true),
  Stk(name: "wood land-elegant", offerprice: "offerprice: 2504", img: "https://t4.ftcdn.net/jpg/00/69/68/43/240_F_69684390_68FDgnqt1cgM9J27Gdu9meGaJGPKIMHF.jpg", orgprice: "Price : 4599", offer: "20% Offer", fav: true),
    Stk(name: "wood land-perfection", offerprice: "offerprice: 2504", img: "https://t4.ftcdn.net/jpg/00/69/68/43/240_F_69684390_68FDgnqt1cgM9J27Gdu9meGaJGPKIMHF.jpg", orgprice: "Price : 4599", offer: "20% Offer", fav: true),



  ];
  late FToast ftoast;


  @override
  void initState() {
    ftoast=FToast();
    ftoast.init(context);

  }
  _showToast(String name){
    ftoast.showToast(child: Container(
    height: 50,
    width: 220,
        color: Colors.white,
        child: Text("$name"),

    ),
        gravity: ToastGravity.CENTER_RIGHT,
        toastDuration: Duration(seconds: 2),
        positionedToastBuilder: (context, child) {
          return Positioned(
            child: child,
            top: 16.0,
            left: 200.0,
          );
        }

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(50),

        child: Card(
          child: SizedBox(
            height: 500,
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            ),
              itemCount:stkList.length ,
              itemBuilder: (BuildContext context, int index) {
              Stk s=stkList[index];
              return Container(
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                        left: 0,
                        child: Container(
                          decoration: BoxDecoration(border: Border.all(),
                            color: Colors.red,
                            borderRadius: const BorderRadius.horizontal(

                                left: Radius.circular(5), right: Radius.circular(20)),
                          ),

                          child: Text("${s.offer}",),

                        )),
                    Positioned(
                        top:50,
                        left: 0,
                        child: Image.network("${s.img}",height:160 ,)),
                    Positioned(
                        top: 210,
                        left: 0,
                        child: Text("${s.name}",style: TextStyle(fontSize: 20),)),

                    Positioned(
                      top: 240,
                        left: 0,
                        child: Container(
                          child: Text("${s.orgprice}",style: TextStyle(fontSize: 18,decoration: TextDecoration.lineThrough),),
                        )),
                    Positioned(
                      top: 270,
                        left: 0,

                        child: Text("${s.offerprice}",style: TextStyle(backgroundColor: Colors.red,fontSize: 18),)


                    ),
                    Positioned(
                      top: 270,
                      left: 160,
                      child: ElevatedButton(onPressed: (){
                        _showToast("${s.name}");
                      }, child: Text("Add")),
                    ),
                    Positioned(
                      top:60,
                        left: 160,

                        child: stkList[index].fav?Icon(Icons.favorite,color: Colors.red,):
                    Icon(Icons.favorite,color: Colors.blueGrey,)),
                  ],


                ),
              );
              },



            ),
          ),
        ),
      ),
    );
  }
}
