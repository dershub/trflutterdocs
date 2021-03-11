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
                  ExpansionTile(title: Text("Samples & tutoriels")),
                  ExpansionTile(title: Text("Development")),
                  ExpansionTile(title: Text("Testing & debugging")),
                  ExpansionTile(title: Text("Performance & optimization")),
                  ExpansionTile(title: Text("Deployment")),
                  ExpansionTile(title: Text("Resources")),
                  ExpansionTile(title: Text("Reference")),
                ],
              ),
            )
          ],
        ));
  }
}
