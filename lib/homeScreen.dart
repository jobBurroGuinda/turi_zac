import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turi_zac/screenAgustin.dart';
import 'package:turi_zac/screenCatedral.dart';
import 'configuration.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;


  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor)..rotateY(isDrawerOpen? -0.5:0),
      duration: const Duration(milliseconds: 250),

      decoration: BoxDecoration(
          color: Colors.grey[200],

          borderRadius: BorderRadius.circular(isDrawerOpen?40:0.0)

      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isDrawerOpen?IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: (){
                      setState(() {
                        xOffset=0;
                        yOffset=0;
                        scaleFactor=1;
                        isDrawerOpen=false;

                      });
                    },

                  ): IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        setState(() {
                          xOffset = 230;
                          yOffset = 150;
                          scaleFactor = 0.6;
                          isDrawerOpen=true;
                        });
                      }),
                  Column(
                    children: [
                      const Text('Ubicación'),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: primaryGreen,
                          ),
                          const Text('Centro histórico de Zacatecas'),
                        ],
                      ),
                    ],
                  ),
                  const CircleAvatar()
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              margin: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.search),
                  Text('Buscar lugares de interés'),
                  Icon(Icons.settings)

                ],
              ),
            ),

            Container(height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: mainHorizontalCategories.length,
                itemBuilder: (context,index){
                  return Container(
                    child: Column(
                      children: [
                        Container(

                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: shadowList,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset(mainHorizontalCategories[index]['iconPath'],       height: 50,
                            width: 50,color: Colors.grey[700],),
                        ),
                        Text(mainHorizontalCategories[index]['name'])
                      ],
                    ),
                  );
                },

              ),
            ),


            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenCatedral()));
              },
              child: Container(
                height: 240,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(color: Colors.blueGrey[300],
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: shadowList,
                            ),
                            margin: EdgeInsets.only(top: 50),
                          ),
                          Align(
                            child: Hero(
                                tag:1,child: Image.asset('images/catedral.png')),
                          )

                        ],
                      ),
                    ),
                    Expanded(child: Container(
                      margin: EdgeInsets.only(top: 60,bottom: 20),
                      decoration: BoxDecoration(color: Colors.white,

                          boxShadow: shadowList,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                          ),
                      ),
                      child: Center(child: Text("Catedral",style: TextStyle(color: primaryGreen,fontSize: 25)),),
                    ))

                  ],
                ),

              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenAgustin()));

              },
              child: Container(
                height: 240,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(color: Colors.orange[100],
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: shadowList,
                            ),
                            margin: EdgeInsets.only(top: 50),
                          ),
                          Align(
                            child: Hero(
                                tag:1,child: Image.asset('images/agusti.png')),
                          )

                        ],
                      ),
                    ),
                    Expanded(child: Container(
                      margin: EdgeInsets.only(top: 60,bottom: 20),
                      decoration: BoxDecoration(color: Colors.white,

                          boxShadow: shadowList,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)

                          )
                      ),
                      child: Center(child: Text("Ex Templo de San Agustín",style: TextStyle(color: primaryGreen,fontSize: 25)),),
                    ))

                  ],
                ),

              ),
            ),
            const SizedBox(height: 50,)

          ],
        ),
      ),
    );
  }
}
