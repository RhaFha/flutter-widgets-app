import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTilte;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTilte,
    required this.link,
    required this.icon,
  });

}


const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones', 
    subTilte: 'Varios botones', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas', 
    subTilte: 'Un contenedor estilizado', 
    link: '/cards', 
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Botones', 
    subTilte: 'Varios botones', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined,
  ),
];
