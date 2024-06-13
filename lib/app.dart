import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_view.dart';
import 'package:flutter_application_1/blocs/authentication_bloc/authentication_bloc.dart';//import state is defferent
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';






class MyApp extends StatelessWidget {
  final UserRepository userRepository;
  const MyApp(this.userRepository, {super.key} );


@override
Widget build(BuildContext context) {
  return RepositoryProvider<AuthenticationBloc>(
    create: (create) => AuthenticationBloc(
      userRepository: userRepository
    ),
    child: MyAppView(),
    );

}
}

