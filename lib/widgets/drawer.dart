import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://media-exp1.licdn.com/dms/image/C5603AQHfjdG-MvJP1Q/profile-displayphoto-shrink_200_200/0/1634887556253?e=2147483647&v=beta&t=CnT4iBzJX4cmNbiKtQaw9QeRKkmsje0E4n5iQbdTzoM";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: const [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Jay Vadolkar",style: TextStyle(color: Colors.white)),
                accountEmail: Text("jayvadolkar1@gmail.com",style: TextStyle(color: Colors.white)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl) 
                ),
              ),
            ) ,
            ListTile(
              title: Text("Home", textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
              leading: Icon(
                CupertinoIcons.home, 
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text("Profile", textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
              leading: Icon(
                CupertinoIcons.profile_circled, 
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text("Email Me", textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
              leading: Icon(
                CupertinoIcons.mail, 
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
