import "package:flutter/material.dart";

class Second1 extends StatefulWidget {
  final List<int> number;
  const Second1({super.key, required this.number});

  @override
  State<Second1> createState() => _SecondState();
}

class _SecondState extends State<Second1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int last = widget.number.last;
          setState(() {
            widget.number.add(last + 1);
          });
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        children: [
          Text(widget.number.last.toString()),

          Container(
            height: 200,
            width: double.maxFinite,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.number.length,
              itemBuilder: (context, index) {
                return Text(
                  widget.number[index].toString(),
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
