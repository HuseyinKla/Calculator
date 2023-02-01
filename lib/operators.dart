import 'package:flutter/material.dart';

class Operators extends StatefulWidget {
  const Operators({Key? key}) : super(key: key);

  @override
  State<Operators> createState() => _operatorsState();
}

class _operatorsState extends State<Operators> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("+"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("-"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("*"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("/"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
