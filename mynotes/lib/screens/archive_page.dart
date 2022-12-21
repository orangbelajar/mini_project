import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'components/list_data.dart';
import 'components/searchnote.dart';

class ArchivePage extends StatefulWidget {
  const ArchivePage({super.key});

  @override
  State<ArchivePage> createState() => _ArchivePageState();
}

class _ArchivePageState extends State<ArchivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFF8787),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Archive Notes'),),
        body: SafeArea(
          child: ListView(
        children: const [
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