import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mynotes/screens/components/searchnote.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return 
          Container(
            padding: const EdgeInsets.only(top: 20, left: 20,right: 20),
            height: 150,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              gradient: LinearGradient(colors: [
                Color(0xffF8C4B4),
                Color(0xffFF8787),

              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
              )
            ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment : CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello,\nSiti Dwi Fadilla',
                     style: GoogleFonts.fredoka(color: Colors.red, fontSize: 20),
                  ),
                  Container(
              width: 50,
              height: 50,
              child: const CircleAvatar(
                radius: 60,
                backgroundImage: ExactAssetImage('assets/dilaa.jpeg'),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                
              ),
                  ),
                ],
              
              ),
              const SizedBox(
                height: 20,
              ),
              const SearchTextField(),
              ],
              ),
          
          );

          
        
      
      
  }
}



























// import 'package:flutter/material.dart';

// class CustomAppBar extends StatelessWidget {
//   const CustomAppBar({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15.0),
//       child: Row(
        
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Column(
//             children: [
//               const Text(
//                 "My Notes App",
//                 style: TextStyle(color: Colors.white,fontSize: 16, fontStyle: FontStyle.normal),
//               ),
//             ],
//           ), 
          // Container(
          //     width: 50,
          //     child: const CircleAvatar(
          //       radius: 60,
          //       backgroundImage: ExactAssetImage('assets/dilaa.jpeg'),
          //     ),
          //     decoration: BoxDecoration(
          //       shape: BoxShape.circle,
                
          //     ),
//             ),
          
      
//         ],
           
//       ),
    
          
//     );
//   }
// }