import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/couter_provider.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body:  Center(
        child: Column(
          children: [
            Text('Counter ${counterProvider.counter}'),

            ElevatedButton(onPressed: (){
              counterProvider.increment();
            }, child: Text('Increment')),
            ElevatedButton(onPressed: (){
              counterProvider.decrement();

            }, child: Text('Decrement')),
            ElevatedButton(onPressed: (){
              counterProvider.reset();

            }, child: Text('Reset')),

          ],
        ),
      ),
    );
  }
}
