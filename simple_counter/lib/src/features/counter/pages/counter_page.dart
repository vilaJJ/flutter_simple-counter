import 'package:flutter/material.dart';
import 'package:simple_counter/src/features/counter/components/areas/controls_area_counter_component.dart';
import 'package:simple_counter/src/features/counter/components/areas/number_area_counter_component.dart';
import 'package:simple_counter/src/features/counter/components/areas/state_area_counter_component.dart';
import 'package:simple_counter/src/features/counter/components/background/image/image_background_counter_component.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: ImageBackgroundCounterComponent(),
        ),
        child: const Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StateAreaCounterComponent(),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: NumberAreaCounterComponent(),
                  ),
                  ControlsAreaCounterComponent(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
