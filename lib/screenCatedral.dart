import 'package:flutter/material.dart';
import 'configuration.dart';
import 'customDialog.dart';

class ScreenCatedral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _showDailog() {
      showDialog(
          context: context,
          builder: (context) {
            return CustomDialog(
              title: "Información",
              description:
              "El origen de la Catedral fue una parroquia que se comenzó a construir"
                  " en 1568 y se concluyó 17 años después. En lugar de ésta se construyó"
                  " una nueva iglesia en septiembre de 1625 y luego una tercera, "
                  "en agosto de 1752, que es la que se conserva hasta hoy. De estilo "
                  "churrigueresco o ultrabarroco, posee tres fachadas y dos torres, una"
                  " de las cuales sostiene una campana forjada con las joyas y monedas de"
                  " devotos zacatecanos. La fachada principal está dedicada a la Eucaristía,"
                  " la del norte al Santo Cristo y la del sur a Nuestra Señora de los Zacatecas,"
                  " patrona de la ciudad.",
            );
          });
    }
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blueGrey[300],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                    ),
                  )
                ],
              )),
          Container(
            margin:const EdgeInsets.only(top: 40),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
                    Navigator.pop(context);
                  }),
                  IconButton(icon: Icon(Icons.share), onPressed: (){

                  })
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Hero(
                  tag: 1,
                  child: Image.asset('images/ubi_catedral.png')),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 100,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: shadowList,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(child: Text("Catedral",style: TextStyle(color: primaryGreen,fontSize: 35)),),
            ),
          ),



          Container(
            height: 120,
            margin: const EdgeInsets.only(top: 550),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: infoAdicionalIglesias.length,
              itemBuilder: (context,index){
                return Container(
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {

                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: shadowList,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset(infoAdicionalIglesias[index]['iconPath'],       height: 50,
                            width: 50,color: Colors.grey[700],),

                        ),
                      ),
                      Text(infoAdicionalIglesias[index]['name'])
                    ],

                  ),
                );
              },

            ),
          ),
          Container(
            height: 120,
            margin: const EdgeInsets.only(top: 670),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: itemHorizontalCategories.length,
              itemBuilder: (context,index){
                return Container(
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          _showDailog();
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: shadowList,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset(itemHorizontalCategories[index]['iconPath'],       height: 50,
                            width: 50,color: Colors.grey[700],),

                        ),
                      ),
                      Text(itemHorizontalCategories[index]['name'])
                    ],

                  ),
                );
              },

            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 120,
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 70,
                    decoration: BoxDecoration(
                        color: primaryGreen,

                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(Icons.favorite_border,color: Colors.white,),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(color: primaryGreen,borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('LSM Explicativo',style: TextStyle(color: Colors.white,fontSize: 24),)),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40), )
              ),
            ),
          )



        ],
      ),
    );


  }


}
