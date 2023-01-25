import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: const [
          SizedBox(
            height: 30,
          ),
          TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: "Name",
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: "email",
            ),
          ),
        ],
      ),
    );
  }
}
