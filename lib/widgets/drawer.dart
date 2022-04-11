import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final imageUrl =
      "https://scontent.fhdd1-1.fna.fbcdn.net/v/t39.30808-6/276126159_1583005892077304_3321872129521669814_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHIl0WhbjrOynG5oQ0LnsaneqDcGwERsp56oNwbARGynlBiZ2quafo-ijEAEbAaqMv2CseBnZpzBCLtXvnGJm2f&_nc_ohc=3zOGykdXVKEAX_dbKEC&_nc_ht=scontent.fhdd1-1.fna&oh=00_AT94As37hLVRB_O_sqKhbeypy0w4ZuHJ5W8aP9ThZZU1eA&oe=62593962";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.deepPurple),
                  margin: EdgeInsets.zero,
                  accountName: Text("Mudasir Hussain"),
                  accountEmail: Text("mudasirhussain@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.people,
                color: Colors.white,
              ),
              title: Text(
                "People",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Text(
                "Logout",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
