import 'package:flutter/material.dart';

var defaultBackgroundColor= Colors.grey[800];
var appBarColor=Colors.lightBlue[200];
var myAppBar=AppBar(
  backgroundColor: appBarColor,
  title: const Text (' Unidades Disponibles'),
  centerTitle: true,

);
var drawerTextColor=TextStyle(
  color: Colors.blueGrey[600],
);
var tilePadding=const EdgeInsets.only(left: 8.0, right: 8, top:8);
var myDrawer=Drawer(
  backgroundColor: Colors.grey[300],
  elevation: 0,
  child: Column(
    children: [
      const DrawerHeader(
        child: CircleAvatar(
          backgroundImage: NetworkImage('images/port.jpg'),
          radius:70,
        ),
      ),
      Padding(
       padding:tilePadding,
       child:ListTile(
         leading:const Icon(Icons.home),
         iconColor: Colors.black,
         title:Text(
           'D A S H B O A R D',
           style:drawerTextColor,
         ),
       ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.settings),
          iconColor: Colors.black,
          title: Text(
            'S E T T I N G S',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.info),
          iconColor: Colors.black,
          title: Text(
            'A B O U T',
                style:drawerTextColor,
          ),
        ),
      ),

      Padding(
        padding:tilePadding,
        child:ListTile(
          leading:const Icon (Icons.logout),
          iconColor: Colors.black,
          title:Text(
            'L O G O U T',
                style:drawerTextColor,
          ),
        ),
      ),
    ],
  ),
);
