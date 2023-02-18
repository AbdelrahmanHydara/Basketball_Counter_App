import 'package:flutter/material.dart';
import 'package:basketball_counter_app/cubit/cubit.dart';

class PointsCounter extends StatelessWidget
{
  const PointsCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    var cubit = CounterCubit.get(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:
      [
        SizedBox(
          height: 600.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:
            [
              const Text(
                'Team Left',
                style: TextStyle(
                  fontSize: 35.0,
                ),
              ),
              Text(
                '${CounterCubit.get(context).teamLeftPoint}',
                style: const TextStyle(
                  fontSize: 150.0,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  minimumSize: const Size(125, 50),
                ),
                onPressed: ()
                {
                  cubit.addOnePointLeft();
                },
                child: const Text(
                  'Add 1 Point',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  minimumSize: const Size(125, 50),
                ),
                onPressed: ()
                {
                  cubit.addTwoPointLeft();
                },
                child: const Text(
                  'Add 2 Point',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  minimumSize: const Size(125, 50),
                ),
                onPressed: ()
                {
                  cubit.addThreePointLeft();
                },
                child: const Text(
                  'Add 3 Point',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 600.0,
          child: VerticalDivider(
            color: Colors.grey,
            thickness: 1,
            indent: 35.0,
            endIndent: 20.0,
          ),
        ),
        SizedBox(
          height: 600.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:
            [
              const Text(
                'Team Right',
                style: TextStyle(
                  fontSize: 35.0,
                ),
              ),
              Text(
                '${CounterCubit.get(context).teamRightPoint}',
                style: const TextStyle(
                  fontSize: 150.0,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  minimumSize: const Size(125, 50),
                ),
                onPressed: ()
                {
                  cubit.addOnePointRight();
                },
                child: const Text(
                  'Add 1 Point',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  minimumSize: const Size(125, 50),
                ),
                onPressed: ()
                {
                  cubit.addTwoPointRight();
                },
                child: const Text(
                  'Add 2 Point',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  minimumSize: const Size(125, 50),
                ),
                onPressed: ()
                {
                  cubit.addThreePointRight();
                },
                child: const Text(
                  'Add 3 Point',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
