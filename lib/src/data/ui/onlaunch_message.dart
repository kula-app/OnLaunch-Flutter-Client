import 'package:flutter/material.dart';
import 'package:flutter_onlaunch/src/data/model/message.dart';

class OnlaunchMessage extends StatelessWidget {
  final Message message;

  const OnlaunchMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Theme.of(context).colorScheme.background,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(message.title,
                  style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(
                height: 20,
              ),
              Text(message.body, style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
        ),
      ),
    );
  }
}
