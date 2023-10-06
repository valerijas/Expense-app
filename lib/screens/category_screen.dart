import 'package:expense_tracker/widgets/expense_screen/expense_form.dart';
import 'package:flutter/material.dart';
import '../widgets/category_screen/category_fetcher.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});
  static const name = '/category_screen'; // for routes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.pink[300],
        title: const Text(
          'Expense App',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: const CategoryFetcher(),
      backgroundColor: Colors.grey[350],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink[300],
        child: const Icon(Icons.card_giftcard),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (_) => const ExpenseForm());
        },
      ),
    );
  }
}
