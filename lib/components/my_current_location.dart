import 'package:flutter/material.dart';
import 'package:next_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});
  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Your Location"),
        content: const TextField(
          decoration: InputDecoration(hintText: "Enter Address.."),
        ),
        actions: [
          //cancel button
          MaterialButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("cancel")),
          //save button
          MaterialButton(
              onPressed: () {
                //update delivery address
                String newAddress = textController.text;
                context.read<Restraunt>().updateDeliveryAddress(newAddress);
                Navigator.pop(context);
                textController.clear;
              },
              child: const Text("save")),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver now",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                Consumer<Restaurant>(
                  builder: (context, restraunt, child) =>

                      //adddress
                      Text(restraunt.deliveryAddress,
                          style: TextStyle(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                              fontWeight: FontWeight.bold)),
                ),
                //drop down menu
                const Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}
