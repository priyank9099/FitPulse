import 'package:fitpulse/src/config/router/app_router_constants.dart';
import 'package:fitpulse/src/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  final String userEmail;
  const HomePage({super.key, required this.userEmail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: double.infinity),
            Text('Home Page + $userEmail'),
            FloatingActionButton(
                onPressed: () => context.read<AuthBloc>().add(LogOutEvent()))
          ],
        ),
      ),
    );
  }
}
