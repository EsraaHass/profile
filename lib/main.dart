
import 'package:flutter/material.dart';

import 'p_view.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: P_view(),
      debugShowCheckedModeBanner: false,
    );
  }
}




