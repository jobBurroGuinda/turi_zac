import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryGreen = Color(0xff416d6d);
Color? grey = Colors.grey;
List<BoxShadow> shadowList = [
  const BoxShadow(color: Colors.grey, blurRadius: 30, offset: Offset(0, 10))
];

List<Map> mainHorizontalCategories = [
  {'name': 'Museos', 'iconPath': 'images/cat.png'},
  {'name': 'Monumentos', 'iconPath': 'images/dog.png'},
  {'name': 'Iglesias', 'iconPath': 'images/rabbit.png'},
  {'name': 'Comida', 'iconPath': 'images/parrot.png'},
  {'name': 'Artesanías', 'iconPath': 'images/horse.png'},
  {'name': 'Hoteles', 'iconPath': 'images/horse.png'}
];

List<Map> itemHorizontalCategories = [
  {'name': 'Información', 'iconPath': 'images/dog.png'},
  {'name': 'Horarios', 'iconPath': 'images/rabbit.png'},
  {'name': 'Fotos', 'iconPath': 'images/parrot.png'},
  {'name': 'Precios', 'iconPath': 'images/horse.png'},
  {'name': 'Contacto', 'iconPath': 'images/horse.png'}
];

List<Map> infoAdicionalIglesias = [
  {'name': 'Comida', 'iconPath': 'images/parrot.png'},
  {'name': 'Museos', 'iconPath': 'images/cat.png'},
  {'name': 'Monumentos', 'iconPath': 'images/dog.png'},
  {'name': 'Artesanías', 'iconPath': 'images/horse.png'},
  {'name': 'Hoteles', 'iconPath': 'images/horse.png'}
];

List<Map> drawerItems=[
  {
    'icon': FontAwesomeIcons.paw,
    'title' : 'Museos'
  },
  {
    'icon': Icons.mail,
    'title' : 'Monumentos'
  },
  {
    'icon': FontAwesomeIcons.plus,
    'title' : 'Iglesias'
  },
  {
    'icon': Icons.favorite,
    'title' : 'Comida'
  },
  {
    'icon': Icons.mail,
    'title' : 'Artesanías'
  },
  {
    'icon': FontAwesomeIcons.userAlt,
    'title' : 'Hoteles'
  },
];