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
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('data'),
                // Text('data')
                ListTile(
                  title: Text(
                    "Technology behind the Blockchain",
                    style: TextStyle(fontSize: 8),
                  ),
                  subtitle: Row(
                    children: [
                      Text('Project #!', style: TextStyle(fontSize: 8)),
                      Text(
                        'See project details',
                        style: TextStyle(fontSize: 8),
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.edit,
                    size: 12,
                  ),
                )
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
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text('TOP')))
      ],
    );
  }
}
