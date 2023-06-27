import 'package:flutter/material.dart';
import 'package:flutter_basic/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final List<Color> colors;

  const GradientContainer({
    super.key,
    required this.colors,
  });

  void rollDice() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-2.png',
              width: 200,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(8.0),
                foregroundColor: Colors.white,
              ),
              child: const StyledText('text'),
            ),
          ],
        ),
      ),
    );
  }
}
