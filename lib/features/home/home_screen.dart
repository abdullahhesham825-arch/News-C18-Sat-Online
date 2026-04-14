import 'package:flutter/material.dart';
import 'package:news/features/home/views/categories_view/categories_view.dart';
import 'package:news/features/home/views/sources_view/sources_view.dart';
import 'package:news/features/home/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer:SourcesView(),
    );
  }
}
