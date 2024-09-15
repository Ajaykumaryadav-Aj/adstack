import 'package:flutter/material.dart';

class SmallcardWidget extends StatelessWidget {
  const SmallcardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 38, 9, 79),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Text(
                    'All Projects',
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                // Text('data')
                // ListTile(
                //   title: Text(
                //     "Technology behind the Blockchain",
                //     style: TextStyle(fontSize: 8),
                //   ),
                //   subtitle: Row(
                //     children: [
                //       Text('Project #!', style: TextStyle(fontSize: 8)),
                //       SizedBox(
                //         width: 8,
                //       ),
                //       Text(
                //         'See project details',
                //         style: TextStyle(
                //             fontSize: 8, decoration: TextDecoration.underline),
                //       )
                //     ],
                //   ),
                //   trailing: Icon(
                //     Icons.edit,
                //     size: 12,
                //   ),
                // ),
                // ListTile(
                //   title: Text(
                //     "Technology behind the Blockchain",
                //     style: TextStyle(fontSize: 8),
                //   ),
                //   subtitle: Row(
                //     children: [
                //       Text('Project #!', style: TextStyle(fontSize: 8)),
                //       SizedBox(
                //         width: 8,
                //       ),
                //       Text(
                //         'See project details',
                //         style: TextStyle(
                //             fontSize: 8, decoration: TextDecoration.underline),
                //       )
                //     ],
                //   ),
                //   trailing: Icon(
                //     Icons.edit,
                //     size: 12,
                //   ),
                // ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 38, 9, 79),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Text(
                'Top Creators',
                style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
