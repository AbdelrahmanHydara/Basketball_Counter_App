import 'package:basketball_counter_app/modules/point_counter.dart';
import 'package:basketball_counter_app/cubit/cubit.dart';
import 'package:flutter/material.dart';

class BasketballCounterScreen extends StatelessWidget
{
  const BasketballCounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    var cubit = CounterCubit.get(context);

    return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal,
              title: const Text(
                'Points Counter'
                ,),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
              [
                PointsCounter(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                    minimumSize: const Size(125, 50),
                  ),
                  onPressed: ()
                  {
                    cubit.counterReset();
                  },
                  child: const Text(
                    'Reset',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
