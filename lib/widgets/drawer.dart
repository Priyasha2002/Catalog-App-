

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.indigo,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
            accountName:Text("Priyasha Ghosh") ,
            accountEmail: Text("ghoshpriyasha29@gmail.com"),
                  currentAccountPicture:CircleAvatar(
                    backgroundImage: AssetImage("assets/images/pri.jpg")
                  ) ,
        )
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title:Text("Home",
              textScaleFactor: 1.2,
                style:TextStyle(
                  color: Colors.white,
                ),
              )
            ),
            ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                title:Text("Profile",
                  textScaleFactor: 1.2,
                  style:TextStyle(
                    color: Colors.white,
                  ),
                )
            ),
            ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                ),
                title:Text("Email me",
                  textScaleFactor: 1.2,
                  style:TextStyle(
                    color: Colors.white,
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
