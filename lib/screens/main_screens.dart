import 'package:adstacks/widgets/dashboard_widget.dart';
import 'package:adstacks/widgets/side_menu_widget.dart';
import 'package:flutter/material.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          const Expanded(
              flex: 2,
              child: SizedBox(
                child: SideMenu(),
              )),
          const Expanded(
            flex: 7,
            child:DashboardWidget()
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.green,
            ),
          )
        ],
      )),
    );
  }
}
