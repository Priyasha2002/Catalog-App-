import 'package:flutter/material.dart';
import 'package:shopping/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Quest Flamingos")
        ),
      ),

    drawer: MyDrawer(),
    );
  }
}
