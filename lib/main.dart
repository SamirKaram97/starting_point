import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:starting_point_mvvm/shared/network/remote/dio_helper.dart';
import 'package:starting_point_mvvm/shared/styles/themes.dart';
import 'shared/bloc_observer.dart';
import 'shared/network/local/cach_helper.dart';
Future<void> init()async
{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await CacheHelper.init();
  DioHelper.init();
}



void main()async {
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Themes.light,
      darkTheme: Themes.dark,
      home: Container(),
    );
  }
}