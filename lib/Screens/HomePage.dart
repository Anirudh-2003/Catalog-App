import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/models/catalog.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void initState() {
      super.initState();
      loadData();
  }

  loadData() async
  {
    var json = await rootBundle.loadString("Assests/Files/catalog.json");
    final decodeData = jsonDecode(json);
    var productsData = decodeData["products"];
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate((50), (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount:  dummyList.length,
          itemBuilder: (context,index)  {
            return ItemWidget(item: dummyList[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
