import 'package:bloc/bloc.dart';

class MyBlocObserver extends BlocObserver{

  @override
  void onCreate(BlocBase bloc) {


  }
  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
  }


}