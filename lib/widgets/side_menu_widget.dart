import 'package:adstacks/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
      child: Column(
        children: [
          const SizedBox(
            height: 80,
            width: 80,
            child: CircleAvatar(
                // backgroundImage: AssetImage(
                //   'assets/image/Adstacks-w_o-bg.png',
                // ),
                ),
          ),
          const Divider(color: Colors.grey),
          CircleAvatar(
            radius: 30,
            // backgroundImage: AssetImage(
            //   'assets/image/profile12.jpeg',
            // ),
          ),
          const Text('Pooja Mishra'),
          Container(
            alignment: Alignment.center,
            child: const Text('Admin'),
            height: 30,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.greenAccent)),
          ),
          const Divider(
            color: Colors.grey,
          ),
          ListView.builder(
            
            shrinkWrap: true,
            itemCount: data.menu.length,
            itemBuilder: (context, index) => buildMenuEntry(data, index),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'WORKSPACE',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Icon(Icons.add)
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 13),
            child: ExpansionTile(
              title: Text(
                "Adstacks",
                style: TextStyle(fontSize: 9),
              ),
              children: <Widget>[
                ListTile(
                  title: Text("Option 1"),
                ),
                ListTile(
                  title: Text("Option 2"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: const ExpansionTile(
              title: Text(
                "Finance",
                style: TextStyle(fontSize: 11),
              ),
              children: <Widget>[
                ListTile(
                  title: Text("Option 1"),
                ),
                ListTile(
                  title: Text("Option 2"),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Setting"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  buildMenuEntry(SideMenuData data, int index) {
    final isSelected = selectedIndex == index;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected ? Colors.grey : Colors.transparent),
      child: InkWell(
        onTap: () => setState(() {
          selectedIndex == index;
        }),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 6),
              child: Icon(
                data.menu[index].icon,
                color: isSelected ? Colors.black : Colors.black,
              ),
            ),
            Text(
              data.menu[index].title,
              style: TextStyle(
                color: isSelected ? Colors.black : Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
