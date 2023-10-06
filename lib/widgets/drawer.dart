import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageURL =
        "data:image/jpeg;base64,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";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Anirudh Raje Bhosle"),
                  accountEmail: Text("anirudh.bhosle@gmail.com"),
                  currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageURL),)
              )
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.envelope_badge,
                color: Colors.white,
              ),
              title: Text(
                "Email",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
