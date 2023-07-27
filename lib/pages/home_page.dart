import 'package:flutter/material.dart';
import 'package:shopping/models/catalog.dart';
import 'package:shopping/widgets/drawer.dart';
import 'package:shopping/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Quest Flamingos")
        ),
      ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context,index) {
          return ItemWidget(
            item: dummyList[index]);
        }

      ),
    ),

    drawer: MyDrawer(),
    );
  }
}
