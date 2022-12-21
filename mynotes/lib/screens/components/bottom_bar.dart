import 'package:flutter/material.dart';
import 'package:mynotes/screens/favorit_page.dart';
import 'package:mynotes/screens/home_screen.dart';
import 'package:mynotes/screens/profile_page.dart';

import '../add_list_note/add_note.dart';
import '../archive_page.dart';


class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.amber,
          spreadRadius: 2.0,
          blurRadius: 8.0,
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomeScreen()));},
              icon: const Icon(Icons.home)),
          IconButton(
              onPressed: () {Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ArchivePage()));},
              icon: const Icon(Icons.archive)),
          
          IconButton(
              onPressed: () {Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Addtodo()));},
              icon: const Icon(Icons.add)),
          IconButton(
              onPressed: () {Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FavoritePage()));},
              icon: const Icon(Icons.favorite)),
          
          IconButton(
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ProfilePage()));
              }, icon: const Icon(Icons.person_outline_rounded)),
        ],
      ),
    );
  }
}
