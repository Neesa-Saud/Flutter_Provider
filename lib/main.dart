import 'package:flutter/material.dart';
import 'package:myapp/with%20provider/home.dart';
import 'package:myapp/with%20provider/provider_list.dart';
import 'package:myapp/without%20provider/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      //can also use sigle provider, use multi provider for multiple providers
      providers: [
        ChangeNotifierProvider(create: (context) => NumberListProvider()),
      ],
      child: MaterialApp(
        title: 'Numbers Incementer',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.pink),
        home: Home2(),
      ),
    );
  }
}
