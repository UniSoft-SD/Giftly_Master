import 'package:giftly_app/src/app.dart';
import 'package:giftly_app/src/authentication-bloc/authentication-bloc.dart';
import 'package:giftly_app/src/authentication-bloc/authentication_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GiftlyBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    print(event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }

  @override
  void onError(Cubit bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    print(error);
  }
}

void main() {
  Bloc.observer = GiftlyBlocObserver();
  runApp(
    BlocProvider<AuthenticationBloc>(
      create: (context) {
        return AuthenticationBloc()..add(AppStartedEvent());
      },
      child: MyApp(),
    ),
  );
}
