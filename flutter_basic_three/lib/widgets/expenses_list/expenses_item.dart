import 'package:flutter/material.dart';
import 'package:flutter_basic_three/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  final Expense expenses;

  const ExpenseItem(
    this.expenses, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 20,
        ),
        child: Column(
          children: [
            Text(expenses.title),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                /// .toStringAsFixed(2) the 2 stand for 2 numbers after the . of a number. Like this 12.3433 = 12.34
                Text('\$${expenses.amout.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expenses.category]),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(expenses.formattedDate),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
