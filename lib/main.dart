import 'package:check_internet_connection_bloc/bloc/cubit/internet_cubit.dart';
import 'package:check_internet_connection_bloc/bloc/internet_bloc.dart';
import 'package:check_internet_connection_bloc/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetCubit()..checkConnection(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
