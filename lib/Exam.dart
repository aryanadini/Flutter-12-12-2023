import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new1/Whatsapp2.dart';

class Product{
  late String name;
  late String price;
  late String img;
  Product({required this.name,required this.price,required this.img});
}
class Pro{
  late String name;
  late String img;
  Pro({required this.name,required this.img});
}
class New{
  late String img;
  late String name;
  late String price;
  New({required this.name,required this.img,required this.price});
}



class Exam extends StatefulWidget {
  const Exam({super.key});

  @override
  State<Exam> createState() => _ExamState();
}

class _ExamState extends State<Exam> {


List<Product>productList=[Product(name: "Tomato",  img: "https://t4.ftcdn.net/jpg/02/32/98/31/240_F_232983161_9lmUyHKnWbLW0vQPvWCrp5R5DSpexhbx.jpg",  price: 'Price :200'),
Product(name: "potato", price: "Price :  12", img: "https://t3.ftcdn.net/jpg/00/41/30/10/240_F_41301053_AbLi3hlosbLajBo7lQdNyfGz9eusxY1x.jpg"),
Product(name: "brinjal", price: "Price : 13", img: "https://image.shutterstock.com/image-photo/three-fresh-eggplants-isolated-on-260nw-1381722392.jpg"),
  Product(name: "beetroot", price: "Price : 13", img: "https://image.shutterstock.com/image-photo/fresh-beetroot-isolated-on-white-260nw-1760973035.jpg"),
  Product(name: "melon", price: "Price : 13", img: "https://t4.ftcdn.net/jpg/01/55/18/31/240_F_155183119_Fif47lY91rkYhuhzOTpApNcMZyRqn4wt.jpg"),
  Product(name: "carrot", price: "Price : 13", img: "https://t3.ftcdn.net/jpg/01/20/47/06/240_F_120470660_ha8n1vyrH0BVonoSjlod1GbualTYdPoA.jpg"),
  Product(name: "chilly", price: "Price : 13", img: "https://t4.ftcdn.net/jpg/00/55/53/45/240_F_55534593_bcuiI7vujoIEoYf7jlaIU1in32WlCvld.jpg"),
  Product(name: "cucumber", price: "Price : 13", img: "https://t3.ftcdn.net/jpg/00/12/85/48/240_F_12854880_v8ihLj51rorIe2ytVG1OLUmDmpdkSobD.jpg"),
  Product(name: "bitter guard", price: "Price : 13", img: "https://image.shutterstock.com/image-photo/bitter-guard-white-back-ground-260nw-771645721.jpg"),

];
List<Pro>proList=[Pro(name: "Grocery", img: "https://image.shutterstock.com/image-photo/fresh-fruits-vegetables-on-shelf-260nw-1033901476.jpg"),Pro(name: "cake", img: "https://t3.ftcdn.net/jpg/02/45/45/62/240_F_245456223_CrK1J9ePGfc1UW2QncGmFfycpI3vFnxI.jpg"),Pro(name: "Sweets", img: "https://t3.ftcdn.net/jpg/02/28/58/04/240_F_228580421_XfLmoPjFDLw6Rw5HZU69esFWqYOWirE5.jpg"),Pro(name: "Ice cream", img: "https://t3.ftcdn.net/jpg/00/79/88/32/240_F_79883273_LTrdhAyXPxskSCUEDkso5EkoLonYWo5i.jpg")
,Pro(name: "Nuts", img: "https://image.shutterstock.com/image-photo/nuts-mix-wooden-plate-260nw-355672364.jpg")];

List<New>newList=[New(name: "cake ", img: "https://t3.ftcdn.net/jpg/02/45/45/62/240_F_245456223_CrK1J9ePGfc1UW2QncGmFfycpI3vFnxI.jpg", price: 'Price :*12*'),New(name: "Ice", img: "https://t3.ftcdn.net/jpg/02/28/58/04/240_F_228580421_XfLmoPjFDLw6Rw5HZU69esFWqYOWirE5.jpg", price: 'price :*12*')];




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: Icon(Icons.person),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(

        ),
        child: SingleChildScrollView(
          child: Column(

            children:[
            Title(color: Colors.blueAccent, child: Align
           (alignment: Alignment.topLeft,

            child: Text("Shop Now.......",style: TextStyle(fontSize: 25),))),
            Center(child: Image.network("https://image.shutterstock.com/image-photo/fresh-vegitables-photos-white-background-260nw-2329958639.jpg",height: 200,

            ),),
             Align(alignment: Alignment.topLeft,
               child: Text("Categories",style: TextStyle(fontSize: 30),),
             ),
              SizedBox(
                height: 130,

                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: proList.length,
                  itemBuilder: (
                      BuildContext context, int index) {
                    Pro l=proList[index];
                    return Container(
                      height: 100,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(backgroundImage: NetworkImage("${l.img}"),radius: 40,),

                           Text("${l.name}",)
                        ],
                      ),
                    );
                  },

                ),


              ),


              Align(alignment: Alignment.topLeft,
                child: Text("Top Product",style: TextStyle(fontSize: 30),),
              ),
              SizedBox(
                height: 400,

                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: productList.length,
                  itemBuilder: (BuildContext , int index) {
                    Product p=productList[index];
                    return ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage("${p.img}"),),
                      title: Text("${p.name}"),
                      subtitle: Text("${p.price}"),
                      trailing: ElevatedButton(onPressed: (){}, child: Text("Add")),
                    );
                  },
                ),

              ),



              Align(alignment: Alignment.topLeft,
                child: Text("Offer Zone",style: TextStyle(fontSize: 30),),
              ),



SizedBox(
  height: 400,
  child: GridView.builder

    (gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:  2,
      crossAxisSpacing: 5.0,
      mainAxisSpacing: 4.0  ),
    itemCount: newList.length,
    itemBuilder: (BuildContext context, int index) {
      New n=newList [index];
      return Container(
        padding: const EdgeInsets.all(8),

               height: 400,
               child: Card(
                 child: Column(
                  children: [Image.network("${n.img}"),
                  Center(child: Text("${n.name}",style: TextStyle(fontSize: 20),)),
                 Text("${n.price}"), ElevatedButton(onPressed: (){}, child: Text("Purchase")),
              IconButton(onPressed: (){}, icon:Icon(Icons.shopping_cart, ),),
              Text("Add to cart"),

            ],
          ),
        ),
      );

    }, ),

)



          ],






          ),
        ),
      ),





    );
  }
}
