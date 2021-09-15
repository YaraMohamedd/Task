import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SidePanel2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(   child: Row(
            children: [
              CircleAvatar(
                //radius: 100,
               backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/person1.jpg'),
               // child: Image.asset('assets/person1.jpg',height: 100 ,),

              ),

              Text('Ahmed Mohamed')
            ],
          ),),
          ListTile(
            title: Text('Friends'),
            leading: Icon(Icons.group),
            onTap: () {
              // Navigator.pushReplacement(context,
              //     MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
          ListTile(
            title: Text('Memories'),
            leading: Icon(Icons.timer),
            // leading: Icon(Icons.thumb_up_alt_sharp ),
            onTap: () {
              // Navigator.pushReplacement(context,
              //     MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
          ListTile(
            title: Text('Marketplace'),
            leading: Icon(Icons.account_balance_rounded),

            onTap: () {
              // Navigator.pushReplacement(context,
              //     MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
          ListTile(
            title: Text('Groups'),
            leading: Icon(Icons.group_outlined),
            onTap: () {
              // Navigator.pushReplacement(context,
              //     MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
        ],
      ),
    );
  }
}
