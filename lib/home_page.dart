import 'package:check_internet_connection_bloc/bloc/internet_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: BlocBuilder<InternetBloc, InternetState>(
        builder: (context, state) {
          if (state is ConnectedState) {
            return _buildTextWidget("Connected");
          } else if (state is NotConnectedState) {
            return _buildTextWidget("Not Connected");
          }
          return _buildTextWidget("Not Connected");
        },
      ),
    );
  }

  Widget _buildTextWidget(String message) => Center(child: Text(message));
}
