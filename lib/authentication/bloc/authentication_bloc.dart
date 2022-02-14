import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationInitial()) {
    on<AuthenticationEvent>((event, emit)async {
     if (event is AppStarted)  {
      await Future.delayed(const Duration(seconds: 2));
      emit(AuthenticationUnAuthenticated());
    }
    });
  }
}
