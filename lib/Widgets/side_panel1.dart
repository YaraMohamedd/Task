import 'package:flutter/material.dart';

class SidePanel1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(

      child:PopupMenuButton(
        //  color: Colors.grey,
          icon: Icon(Icons.arrow_drop_down_circle,color:Colors.black,),
          itemBuilder: (context) => [
            PopupMenuItem(
              child: Column(

                children: [
                  Row(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(150,),
                          child: Image.asset('assets/person1.jpg',height: 40,width: 40,fit: BoxFit.cover,)),
                      SizedBox(width: 7,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Ahmed Mohamed'),
                          Text('See your profile',style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.grey),),

                        ],
                      )
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Icon(Icons.feedback_rounded,color: Colors.black,),
                      SizedBox(width: 7,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Give Feedback'),
                            Text('Help us improve the new facebook',style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.grey),),
                          ],
                        ),
                      )
                    ],
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Settings & Privacy'),
                    leading:  Icon(Icons.settings,color: Colors.black,),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,),
                    onTap: () {
                      // Navigator.pushReplacement(context,
                      //     MaterialPageRoute(builder: (context) => HomeScreen()));
                    },
                  ),
                  ListTile(
                    title: Text('Help & Support '),
                    leading:  Icon(Icons.contact_support_rounded,color: Colors.black,),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,),
                    onTap: () {
                      // Navigator.pushReplacement(context,
                      //     MaterialPageRoute(builder: (context) => HomeScreen()));
                    },
                  ),
                  ListTile(
                    title: Text('Display & Accessibility'),
                    leading: Icon(Icons.dark_mode,color: Colors.black,),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,),
                    onTap: () {
                      // Navigator.pushReplacement(context,
                      //     MaterialPageRoute(builder: (context) => HomeScreen()));
                    },
                  ),
                  ListTile(
                    title:        Text('Logout '),
                    leading:  Icon(Icons.logout,color: Colors.black,),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,),
                    onTap: () {
                      // Navigator.pushReplacement(context,
                      //     MaterialPageRoute(builder: (context) => HomeScreen()));
                    },
                  ),

                ],
              ),

              value: 1,
            ),
          ]
      ),

    );
  }
}
