import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xFF303841),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Favorite Notes'),
        actions: <Widget>[
        IconButton(icon: new Icon(Icons.favorite, color: Colors.white),
         onPressed: () { },),
        ],
        ),
        body: Center(
          child: Container(
            child: Image.asset("assets/bookpage.png",width: 200),    
    
    ),
    
    
    
        ),
    
        
        
    );
  }
}