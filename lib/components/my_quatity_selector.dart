import 'package:flutter/material.dart';
import 'package:next_app/models/food.dart';

class QuatitySelector extends StatelessWidget {
  final int quanyity;
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const QuatitySelector(
      {super.key,
      required this.quanyity,
      required this.food,
      required this.onIncrement,
      required this.onDecrement});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          //decrease button
          GestureDetector(
            onTap: onDecrement,
            child: Icon(
              Icons.remove,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          //quantity count
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox(
              width: 20,
              child: Center(
                child: Text(quanyity.toString()),
              ),
            ),
          ),
          //increae button
          GestureDetector(
            onTap: onDecrement,
            child: Icon(
              Icons.add,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
