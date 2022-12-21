import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/appbar.dart';
import 'components/bottom_bar.dart';
import 'components/list_data.dart';
import 'components/searchnote.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff16213E),
      bottomNavigationBar: const CustomBottomBar(),
      body: SafeArea(
          child: ListView(
        children: const [
          // bagian app bar
          CustomAppBar(),
          // //search 
          // SearchBar(),
          SizedBox(
            height: 16,
          ),
          //notes
          Listdata(),
          
        ],
      )),
    );
  }
}