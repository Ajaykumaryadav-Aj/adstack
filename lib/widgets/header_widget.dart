import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: Text(
          'Home',
          // style: TextStyle(color: Colors.white),
        )),
        Expanded(
          child: TextField(
            
              decoration: InputDecoration(
                
                  filled: true,
                  fillColor: Color.fromARGB(255, 14, 2, 25),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.white),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    
                      borderRadius: BorderRadius.all(Radius.circular(10))))),
        ),
      ],
    );
  }
}
