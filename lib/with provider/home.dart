import 'package:flutter/material.dart';
import 'package:myapp/with%20provider/provider_list.dart';
import 'package:myapp/with%20provider/second.dart';
import 'package:provider/provider.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _HomeState();
}

class _HomeState extends State<Home2> {
  List<int> number = [1, 2, 3, 4];
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder:
          (context, numbermodel, child) => Scaffold(
            appBar: AppBar(),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                int last = number.last;
                setState(() {
                 numbermodel.number.add(last + 1);
                });
              },
              child: Icon(Icons.add),
            ),
            body: Column(
              children: [
                Text(numbermodel.number.last.toString()),
                Expanded(
                  child: ListView.builder(
                    itemCount: numbermodel.number.length,
                    itemBuilder: (context, index) {
                      return Text(
                        numbermodel.number[index].toString(),
                        style: const TextStyle(fontSize: 20),
                      );
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Second2(number:numbermodel.number),
                      ),
                    );
                  },
                  child: Text('Go to Second'),
                ),
              ],
            ),
          ),
    );
  }
}
