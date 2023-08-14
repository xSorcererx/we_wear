import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wewear/presentation/modules/cart/textstyle.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE2E2E2),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        color: Color(0xffE2E2E2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.only(top: 50, bottom: 20),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                        'https://www.disruptivegate.com/wp-content/uploads/2022/04/e7pSyrv9_400x400.jpg'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Monkey D. Luffy',
                      style: textstyle(18, Colors.black, FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    'Monkey@gmail.com',
                    style: textstyle(14, Colors.black54, FontWeight.normal),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text(
                      'Settings',
                      style: textstyle(14, Colors.black, FontWeight.w500),
                    ),
                    trailing: Icon(CupertinoIcons.forward),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text(
                      'Settings',
                      style: textstyle(14, Colors.black, FontWeight.w500),
                    ),
                    trailing: Icon(CupertinoIcons.forward),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text(
                      'Settings',
                      style: textstyle(14, Colors.black, FontWeight.w500),
                    ),
                    trailing: Icon(CupertinoIcons.forward),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text(
                      'Settings',
                      style: textstyle(14, Colors.black, FontWeight.w500),
                    ),
                    trailing: Icon(CupertinoIcons.forward),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text(
                      'Settings',
                      style: textstyle(14, Colors.black, FontWeight.w500),
                    ),
                    trailing: Icon(CupertinoIcons.forward),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text(
                      'Settings',
                      style: textstyle(14, Colors.black, FontWeight.w500),
                    ),
                    trailing: Icon(CupertinoIcons.forward),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text(
                      'Settings',
                      style: textstyle(14, Colors.black, FontWeight.w500),
                    ),
                    trailing: Icon(CupertinoIcons.forward),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text(
                      'Logout',
                      style: textstyle(14, Colors.black, FontWeight.w500),
                    ),
                    trailing: Icon(CupertinoIcons.forward),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
