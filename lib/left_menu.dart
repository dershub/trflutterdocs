import 'package:flutter/material.dart';

class LeftMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.amber,
        child: Row(
          children: [
            SizedBox(
              width: 200,
              child: Column(
                children: [
                  ExpansionTile(
                    title: Text("Get Started"),
                    children: [
                      ListTile(title: Text("1. Install")),
                      ListTile(title: Text("2. Set up an editor")),
                      ListTile(title: Text("3. Test drive")),
                      ListTile(title: Text("4. Write your first app")),
                      ListTile(title: Text("5. Learn more")),
                    ],
                  ),
                  ExpansionTile(
                    title: Text("Samples & tutoriels"),
                    children: [
                      ListTile(title: Text("1")),
                      ListTile(title: Text("2")),
                      ListTile(title: Text("3")),
                    ],
                  ),
                  ExpansionTile(
                    title: Text("Development"),
                    children: [
                      ListTile(title: Text("1")),
                      ListTile(title: Text("2")),
                      ListTile(title: Text("3")),
                    ],
                  ),
                  ExpansionTile(
                    title: Text("Testing & debugging"),
                    children: [
                      ListTile(title: Text("1")),
                      ListTile(title: Text("2")),
                      ListTile(title: Text("3")),
                    ],
                  ),
                  ExpansionTile(
                    title: Text("Performance & optimization"),
                    children: [
                      ListTile(title: Text("1")),
                      ListTile(title: Text("2")),
                      ListTile(title: Text("3")),
                    ],
                  ),
                  ExpansionTile(
                    title: Text("Deployment"),
                    children: [
                      ListTile(title: Text("1")),
                      ListTile(title: Text("2")),
                      ListTile(title: Text("3")),
                    ],
                  ),
                  ExpansionTile(
                    title: Text("Resources"),
                    children: [
                      ListTile(title: Text("1")),
                      ListTile(title: Text("2")),
                      ListTile(title: Text("3")),
                    ],
                  ),
                  ExpansionTile(
                    title: Text("Reference"),
                    children: [
                      ListTile(title: Text("1")),
                      ListTile(title: Text("2")),
                      ListTile(title: Text("3")),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
