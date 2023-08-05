import 'package:flutter/material.dart';
import 'package:flutter_basic_three/models/expense.dart';
import 'package:flutter_basic_three/widgets/expenses_list/expenses_item.dart';

class ExpensesList extends StatelessWidget {
  final List<Expense> expenses;

  const ExpensesList({
    super.key,
    required this.expenses,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => ExpenseItem(
        expenses[index],
      ),
    );
  }
}
