import 'package:basketball_counter_app/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<CounterStates>
{
  CounterCubit() : super(CounterInitialState());

  static CounterCubit get(context) => BlocProvider.of(context);

  int teamLeftPoint = 0;
  int teamRightPoint = 0;

  void addOnePointLeft()
  {
    teamLeftPoint++;
    emit(CounterAddOnePointLeftState());
  }

  void addTwoPointLeft()
  {
    teamLeftPoint += 2;
    emit(CounterAddTwoPointLeftState());
  }

  void addThreePointLeft()
  {
    teamLeftPoint += 3;
    emit(CounterAddThreePointLeftState());
  }

  void addOnePointRight()
  {
    teamRightPoint++;
    emit(CounterAddOnePointRightState());
  }

  void addTwoPointRight()
  {
    teamRightPoint += 2;
    emit(CounterAddTwoPointRightState());
  }

  void addThreePointRight()
  {
    teamRightPoint += 3;
    emit(CounterAddThreePointRightState());
  }

  void counterReset()
  {
    teamRightPoint = 0;
    teamLeftPoint = 0;
    emit(CounterResetState());
  }
}