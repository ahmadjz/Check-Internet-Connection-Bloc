import 'package:check_internet_connection_bloc/bloc/cubit/internet_cubit.dart';
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
      body: BlocConsumer<InternetCubit, InternetState>(
        listener: (context, state) {
          if (state is ConnectedState) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.message)));
          } else if (state is NotConnectedState) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.message)));
          }
        },
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
