import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mask/model/store.dart';
import 'package:mask/ui/view/main_page.dart';

import 'package:mask/viewmodel/store_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider.value(
      value: StoreModel(),
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainPage(),
    );
  }
}
