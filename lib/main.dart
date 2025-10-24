import 'package:flutter/material.dart';

void main() {
  runApp(DragDropDemo());
}

class DragDropDemo extends StatefulWidget {
  @override
  _DragDropDemoState createState() => _DragDropDemoState();
}

class _DragDropDemoState extends State<DragDropDemo> {
  Color targetColor = Colors.grey; // initial color
  bool accepted = false; // to track if dropped successfully

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Draggable & DragTarget Demo")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Draggable Widget
            Center(
              child: Draggable<Color>(
                data: Colors.blue, // what we’re dragging
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                  child: Center(child: Text("Drag Me", style: TextStyle(color: Colors.white))),
                ),
                feedback: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue.withOpacity(0.5),
                  child: Center(child: Text("Dragging...", style: TextStyle(color: Colors.white))),
                ),
                childWhenDragging: Container(
                  height: 100,
                  width: 100,
                  color: Colors.grey[300],
                  child: Center(child: Text("Original")),
                ),
              ),
            ),

            // DragTarget Widget
            DragTarget<Color>(
              onWillAccept: (data) {
                setState(() {
                  targetColor = Colors.yellow;
                });
                return true; // allow acceptance
              },
              onAccept: (data) {
                setState(() {
                  accepted = true;
                  targetColor = Colors.green;
                });
              },
              onLeave: (data) {
                setState(() {
                  targetColor = Colors.grey;
                });
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  height: 150,
                  width: 150,
                  color: targetColor,
                  child: Center(
                    child: Text(
                      accepted ? "Accepted!" : "Drop Here",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
