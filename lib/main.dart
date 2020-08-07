import 'package:flutter/material.dart';
import 'home_page.dart';
import 'data_source.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Montserrat', primaryColor: primaryBlack),
    home: HomePage(),
  ));
}
