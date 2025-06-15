import "package:flutter/material.dart";
import "package:myapp/with%20provider/provider_list.dart";
import "package:provider/provider.dart";

class Second2 extends StatefulWidget {
  final List<int> number;
  const Second2({super.key, required this.number});

  @override
  State<Second2> createState() => _SecondState();
}

class _SecondState extends State<Second2> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder:
          (context, numbermodel, child) => Scaffold(
            appBar: AppBar(),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                int last = numbermodel.number.last;
                setState(() {
                  numbermodel.number.add(last + 1);
                });
              },
              child: Icon(Icons.add),
            ),
            body: Column(
              children: [
                Text(numbermodel.number.last.toString()),

                Container(
                  height: 200,
                  width: double.maxFinite,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: numbermodel.number.length,
                    itemBuilder: (context, index) {
                      return Text(
                        numbermodel.number[index].toString(),
                        style: const TextStyle(fontSize: 20),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
