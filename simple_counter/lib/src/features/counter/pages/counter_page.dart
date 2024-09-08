import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:simple_counter/src/features/counter/controllers/counter_controller.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  late final CounterController controller;

  @override
  void initState() {
    controller = Get.find<CounterController>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
