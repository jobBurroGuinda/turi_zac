import 'package:flutter/material.dart';
import 'drawerScreen.dart';
import 'homeScreen.dart';

void main(){
  runApp(MaterialApp(home: HomePage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.brown,
      primaryColor: Colors.brown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Circular',
    ),
  ));
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          HomeScreen()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: "Modo invidente",
        child: const Icon(Icons.medical_information_rounded),
      ),

    );
  }
}
