import 'package:flutter/material.dart';

class GridViewSample extends StatefulWidget {
  const GridViewSample({super.key});

  @override
  State<GridViewSample> createState() => _GridViewSampleState();
}

class _GridViewSampleState extends State<GridViewSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("グリッドレイアウト"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 4, mainAxisSpacing: 4),
        itemBuilder: ((context, index) => Container(
              color: Colors.teal,
              child: Text(
                index.toString(),
                style: const TextStyle(fontSize: 24, color: Colors.white),
              ),
            )),
      ),
    );
  }
}
