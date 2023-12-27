import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: const Color(0xFFFFFFFF),
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.white,
    iconTheme: const IconThemeData(
      color: Color(0xFF000000),
    ),
    systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: const Color(0x00000000),
    ),
  ),
);
