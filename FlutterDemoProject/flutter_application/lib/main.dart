import 'dart:ffi';

import 'package:flutter/material.dart';
import './home_screen.dart';  
import './profile_screen.dart';  

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {

    Color navigationBarColor = HexColor("#1E293B");

const List<Tab> tabs = <Tab>[
                   Tab(icon: Icon(Icons.home)),
                 Tab(icon: Icon(Icons.message)),
                 Tab(icon: Icon(Icons.inbox)),
                 Tab(icon: Icon(Icons.edit_document)),
                 Tab(icon: Icon(Icons.settings)),
];

        return MaterialApp(  
        home: DefaultTabController(  
        length: tabs.length,  
        child:   Scaffold(  
            drawer: NavDrawer(),
            appBar: AppBar(  
            backgroundColor: navigationBarColor,
            bottom: const TabBar(  
              tabs: tabs,  
            ),  
          ),  
          body: const TabBarView(  
            children: [  
              HomeScreen(),
              ProfileView(),
              Text("b"),
              Text("c"),
              Text("d"),
            ],  
          ),  
        ),  
      ),  
    );  
  }  
}  



class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Color navigationBarColor = HexColor("#1E293B");

    // Color grayColor = const Color.fromRGBO(148, 163, 184, 1);

    return Row(children: [
      Drawer(
      width: 80,
      backgroundColor: navigationBarColor,
      child: 
      ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          ListTile(
            leading: Icon(Icons.menu, color: Colors.white,),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.home, color: Color.fromRGBO(148, 163, 184, 1)),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.message, color: Color.fromRGBO(148, 163, 184, 1)),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.inbox, color: Color.fromRGBO(148, 163, 184, 1)),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.edit_document, color: Color.fromRGBO(148, 163, 184, 1)),
            onTap: null,
          ),

          Spacer(),
          //SizedBox(height: 100),

          

          ListTile(
            leading: Icon(Icons.settings, color: Color.fromRGBO(148, 163, 184, 1)),
            onTap: null,
          ),

          ListTile(
            leading: Icon(Icons.lock_clock, color: Color.fromRGBO(148, 163, 184, 1)),
            onTap: null,
          ),

          ListTile(
            leading: Icon(Icons.notifications, color: Color.fromRGBO(148, 163, 184, 1)),
            onTap: null,
          ),

          ListTile(
            leading: Icon(Icons.book, color: Color.fromRGBO(148, 163, 184, 1)),
            onTap: null,
          )
        ],
      ),
    ),
    
     Drawer(
      width: 190,
      backgroundColor: const Color.fromRGBO(224, 231, 255, 1),
      child: 
   
        // Column(children: [
        //   const DrawerHeader(
        //     decoration: BoxDecoration(
        //         color: Color.fromRGBO(224, 231, 255, 1)),
        //     child: Text(
        //       'Settings',
        //       style: TextStyle(color:  Colors.black, 
        //                 fontSize: 20,
        //                 fontWeight: FontWeight.bold),
        //     ),
        //   ),


      ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
        // ignore: avoid_print

        
         DrawerHeader(
            decoration: BoxDecoration(
                color: Color.fromRGBO(224, 231, 255, 1)),
            child: Text(
              'Settings',
              style: TextStyle(color:  Colors.black, 
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
            ),
          ),

          ListTile(
            leading: Icon(Icons.arrow_drop_down_rounded),
            title: Text('General', style: TextStyle(color:  Color.fromRGBO(148, 163, 184, 1), 
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
                        onTap: null,

          ),

          ListTile(
            title: Text('Profle', style: TextStyle(color:  Colors.black, 
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
                        onTap: null,

          ),

           ListTile(
            title: Text('Team', style: TextStyle(color:  Colors.black, 
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
                        onTap: null,

          ),

           ListTile(
            title: Text('News', style: TextStyle(color:  Colors.black, 
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
                        onTap: null,

          ),

           ListTile(
            title: Text('Acitivy Logs', style: TextStyle(color:  Colors.black, 
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
                        onTap: null,

          ),

          ListTile(
            title: Text('Plans', style: TextStyle(color:  Colors.black, 
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
                        onTap: null,

          ),


          ////Second Section
          ListTile(
            leading: Icon(Icons.arrow_drop_down_rounded),
            title: Text('Inbox', style: TextStyle(color:  Color.fromRGBO(148, 163, 184, 1), 
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
            onTap: null,
          ),

            ListTile(
            title: Text('Email', style: TextStyle(color:  Colors.black, 
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
                        onTap: null,

          ),

           ListTile(
            title: Text('Task', style: TextStyle(color:  Colors.black, 
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
                        onTap: null,

          ),

           ListTile(
            title: Text('Message', style: TextStyle(color:  Colors.black, 
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
                        onTap: null,

          ),

          ListTile(
            title: Text('Notifications', style: TextStyle(color:  Colors.black, 
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
                        onTap: null,

          ),


          /// third Secrion
          ListTile(
            leading: Icon(Icons.arrow_drop_down_rounded),
            title: Text('Media & Data', style: TextStyle(color:  Color.fromRGBO(148, 163, 184, 1), 
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
            onTap: null,
          ),


           ListTile(
            title: Text('Galery', style: TextStyle(color:  Colors.black, 
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
                        onTap: null,

          ),

           ListTile(
            title: Text('File & Video', style: TextStyle(color:  Colors.black, 
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
                        onTap: null,

          ),

         


          ListTile(
            leading: Icon(Icons.arrow_drop_down_rounded),
            title: Text('Message', style: TextStyle(color:  Color.fromRGBO(148, 163, 184, 1), 
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
            onTap: null,
          ),
         
          ListTile(
            leading: Icon(Icons.arrow_drop_down_rounded),
            title: Text('Spam', style: TextStyle(color:  Color.fromRGBO(148, 163, 184, 1), 
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
            onTap: null,
          ),

          ListTile(
            leading: Icon(Icons.arrow_drop_down_rounded),
            title: Text('Insttaltion', style: TextStyle(color:  Color.fromRGBO(148, 163, 184, 1), 
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
            onTap: null,
          ),

          ListTile(
            leading: Icon(Icons.arrow_drop_down_rounded),
            title: Text('Security', style: TextStyle(color:  Color.fromRGBO(148, 163, 184, 1), 
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
            onTap: null,
          ),

          ListTile(
            leading: Icon(Icons.arrow_drop_down_rounded),
            title: Text('Developer', style: TextStyle(color:  Color.fromRGBO(148, 163, 184, 1), 
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
            onTap: null,
          ),
        ],
      )
        
      // ]),
    )
    ]);
  }
}
