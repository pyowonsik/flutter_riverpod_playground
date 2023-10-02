import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_playground/riverpod/provider_observer.dart';
import 'package:flutter_riverpod_playground/screen/home_screen.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [Logger()],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    ),
  );
}
