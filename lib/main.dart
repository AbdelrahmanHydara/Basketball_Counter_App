import 'package:flutter/material.dart';
import 'layout/basketball_counter_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:basketball_counter_app/cubit/states.dart';
import 'package:basketball_counter_app/cubit/cubit.dart';

void main()
{
  runApp(const BasketballCounterApp());
}

class BasketballCounterApp extends StatelessWidget
{
  const BasketballCounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child:  BlocConsumer<CounterCubit,CounterStates>(
        listener: (context,state) {},
        builder:  (context,state)
        {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: BasketballCounterScreen(),
          );
        },
      ),
    );
  }
}
