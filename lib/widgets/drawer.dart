import "package:flutter/material.dart";

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String imageURL =
        "https://media.istockphoto.com/id/1200677760/photo/portrait-of-handsome-smiling-young-man-with-crossed-arms.jpg?s=612x612&w=0&k=20&c=g_ZmKDpK9VEEzWw4vJ6O577ENGLTOcrvYeiLxi8mVuo=";
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.cover)),
            child: UserAccountsDrawerHeader(
              accountName: const Text(
                "Shahnewaz Rakib",
                style: TextStyle(fontSize: 17),
              ),
              accountEmail: const Text("contact@shahnewazrakib.me"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageURL),
              ),
              decoration: const BoxDecoration(color: Colors.transparent),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Ink(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(10), // Set border radius here
                color: Colors.green,
              ),
              child: const ListTile(
                iconColor: Colors.white,
                textColor: Colors.white,
                leading: Icon(Icons.account_circle_sharp),
                title: Text(
                  "User Profile",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ListTile(
              leading: Icon(Icons.dashboard),
              title: Text(
                "Dashboard",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ListTile(
              leading: Icon(Icons.account_balance),
              title: Text(
                "Billing",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ListTile(
              leading: Icon(Icons.security),
              title: Text(
                "Security",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          Column(
            children: const [
              Divider(
                height: 50,
              ),
              ListTile(
                leading: Icon(Icons.facebook),
                title: Text(
                  "Social Media",
                  style: TextStyle(fontSize: 15),
                ),
                iconColor: Colors.blue,
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  "Logout",
                  style: TextStyle(fontSize: 15),
                ),
                iconColor: Color(0xFFFF5B50),
                textColor: Color(0xFFFF5B50),
              ),
            ],
          )
        ],
      ),
    );
  }
}
