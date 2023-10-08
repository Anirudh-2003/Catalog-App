import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/Utils/Route.dart';
import 'package:untitled/models/catalog.dart';
import 'package:untitled/models/catalog.dart';
import 'package:untitled/widgets/themes.dart';
import '../models/catalog.dart';
import '../widgets/Home Widgets/Catalog_Header.dart';
import '../widgets/Home Widgets/Catalog_List.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widgets.dart';
import 'package:velocity_x/velocity_x.dart';

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

  loadData() async {
    await Future.delayed(Duration(seconds: 1));
    var json = await rootBundle.loadString("Assests/Files/catalog.json");
    final decodeData = jsonDecode(json);
    var productsData = decodeData["products"];
    List<Item> list = CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.cremeColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context,MyRoutes.cartRoute),
        backgroundColor: MyTheme.darkBluishColor,
        child: Icon(CupertinoIcons.cart),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                CatalogList().py16().expand()
              else
                CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      ),
    );
  }
}



