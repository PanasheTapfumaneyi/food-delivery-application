import 'package:flutter/material.dart';
import 'package:food_delivery_application/components/custom_drawer.dart';
import 'package:food_delivery_application/components/custom_silver_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Home"),
      //   backgroundColor: Theme.of(context).colorScheme.background,
      // ),
      drawer: CustomDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) =>
            [CustomSilverAppBar(child: Text("Hello"), title: Text("Title"))],
        body: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
