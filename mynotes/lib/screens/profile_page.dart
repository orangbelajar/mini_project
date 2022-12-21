import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mynotes/screens/loginscreen.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    bool notifications = false;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
       backgroundColor: const Color(0xff3E6D9C),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Settings Profil'),
        actions: <Widget>[
        IconButton(icon: new Icon(Icons.settings, color: Colors.white),
         onPressed: () { },),
        ],
        ),
        body: SingleChildScrollView(
      child: Container(
        
        padding: const EdgeInsets.all(16),
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 120,
              child: const CircleAvatar(
                radius: 60,
                backgroundImage: ExactAssetImage('assets/dilaa.jpeg'),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            
              Center(
                child: 
                    Text(
                      'Siti Dwi Fadilla', overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
              ),
                    SizedBox(
                        height: 24,
                        ),
                  
              
              
            
          
            const SizedBox(
              height: 30,
            ),
            ListTile(
              title: Text("Setting Account", style: TextStyle(fontFamily: 'Poppins-ExtraBold',color: Colors.white),),
              subtitle: Text("Ubah Email dan Password",style: GoogleFonts.poppins(color: Color(0xffFFF9B0)),),
              trailing: Icon(Icons.keyboard_arrow_right,
              color: Colors.black,),
              onTap: (() {}),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text("Languages", style: TextStyle(fontFamily: 'Poppins-ExtraBold',color: Colors.white),),
              subtitle: Text("Bahasa Indonesia",style: GoogleFonts.poppins(color: Color(0xffFFF9B0)),),
              trailing: Icon(Icons.keyboard_arrow_right,
              color: Colors.black,),
              onTap: (() {}),   
            ),
             Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text("About", style: TextStyle(fontFamily: 'Poppins-ExtraBold',color: Colors.white),),
              subtitle: Text("App Information",style: GoogleFonts.poppins(color: Color(0xffFFF9B0)),),
              trailing: Icon(Icons.keyboard_arrow_right,
              color: Colors.black,),
              onTap: (() {}),   
            ),
               Divider(
              thickness: 2,
            ),
              SwitchListTile(
                title: Text("Tema Aplikasi",
                style: TextStyle(fontFamily: 'Poppins-ExtraBold',color: Colors.white),              
                ),
                onChanged: (val){}, value: notifications ,           
            ),
             Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text("LogOut",style:TextStyle(fontFamily: 'Poppins-ExtraBold',color: Colors.white),),
              trailing: Icon(Icons.logout,
              color: Colors.black,),
            onTap: (){Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LoginScreen()));},
            ),
            Divider(
              thickness: 2,
            ),
          ],
        ),
      ),
    
    ));
  }
}