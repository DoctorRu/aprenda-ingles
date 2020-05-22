import 'package:aprendaingles/telas/vogais.dart';
import 'package:flutter/material.dart';

import 'bichos.dart';
import 'numeros.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Aprenda inglês"),
          bottom: TabBar(
            controller: _tabController,
            indicatorWeight: 6,
            indicatorColor: Colors.white,
            labelColor: Colors.white, // icon and text color,
            labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            unselectedLabelColor: Colors.grey,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.adb), text: "Bichos"),
              Tab(icon: Icon(Icons.dialpad), text: "Números"),
              Tab(icon: Icon(Icons.alternate_email),text: "Vogais")
            ],
          ),
        ),
        body: TabBarView(
            controller: _tabController,
            children: <Widget>[Bichos(), Numeros(), Vogais()]));
  }
}
