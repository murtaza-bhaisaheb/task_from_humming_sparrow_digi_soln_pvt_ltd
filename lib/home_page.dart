import 'package:flutter/material.dart';
import 'package:task_from_internshala/navbar.dart';
import 'package:task_from_internshala/profile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF01301F),
      ),
      drawer: NavBar(),
      body: Profile(),
    );
  }
}

