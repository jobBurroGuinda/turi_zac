import 'package:flutter/material.dart';
import 'configuration.dart';
import 'customDialog.dart';

class ScreenAgustin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _showDailog() {
      showDialog(
          context: context,
          builder: (context) {
            return CustomDialog(
              title: "Información",
              description:
              "Este templo fue construido por la orden religiosa de los agustinos, la cual llegó a la ciudad de Zacatecas hacia 1575. Durante la segunda mitad del siglo XIX su fachada fue destruida por la Sociedad Presbiteriana, nueva propietaria del inmueble, por no representar concepto alguno del culto evangélico. Al paso de los años, el templo funcionó como vecindad y estacionamiento, hasta que en 1948 dieron inicio las labores de rescate, las cuales se realizaron esporádicamente hasta 1969. El conjunto arquitectónico y los elementos barrocos de la fachada fueron restaurados con un proyecto del maestro Federico Sescosse.",
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
                  child: Image.asset('images/ubi_agustin.png')),
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
              child: Center(child: Text("Ex Templo de San Agustín",style: TextStyle(color: primaryGreen,fontSize: 35, )),),
            ),
          ),



          Container(
            height: 120,
            margin: const EdgeInsets.only(top: 550),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: itemHorizontalCategories.length,
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
                      child: Center(child: Text('Español / Inglés',style: TextStyle(color: Colors.white,fontSize: 24),)),
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
