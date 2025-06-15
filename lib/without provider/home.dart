import 'package:flutter/material.dart';
import 'package:myapp/without%20provider/second.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _HomeState();
}

class _HomeState extends State<Home1> {
  List<int> number = [1, 2, 3, 4];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int last = number.last;
          setState(() {
            number.add(last + 1);
          });
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        children: [
          Text(number.last.toString()),
          Expanded(
            child: ListView.builder(
              itemCount: number.length,
              itemBuilder: (context, index) {
                return Text(
                  number[index].toString(),
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Second1(number: number),
                ),
              );
            },
            child: Text('Go to Second'),
          ),
        ],
      ),
    );
  }
}
