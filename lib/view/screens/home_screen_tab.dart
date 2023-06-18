import 'package:flutter/material.dart';
import 'package:money_manager/data/userinfo.dart';
import 'package:money_manager/utils/constants.dart';
import 'package:money_manager/view/widgets/income_expense_card.dart';
import 'package:money_manager/view/widgets/transaction_item_title.dart';

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(defaultSpacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: defaultSpacing * 2,
            ),
            ListTile(
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  child: Image.asset('assets/images/avatar.jpeg')),
              title: Text('Hey! ${userdata.name}!'),
              trailing: Image.asset('assets/icons/bell.png'),
            ),
            const SizedBox(
              height: defaultSpacing / 1.1,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    '\$${userdata.totalBalance}',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: defaultSpacing / 2,
                  ),
                  Text(
                    'Total balance',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: fontSubHeading),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: defaultSpacing * 2.2,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: IncomeExpenseCard(
                    expenseData: ExpenseData('Income', '\$${userdata.inflow}',
                        Icons.arrow_upward_rounded),
                  ),
                ),
                SizedBox(
                  width: defaultSpacing,
                ),
                Expanded(
                  child: IncomeExpenseCard(
                    expenseData: ExpenseData('Expense',
                        '-\$${userdata.outflow}', Icons.arrow_downward_rounded),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: defaultSpacing * 2,
            ),
            Text(
              'Recent Transactions',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
            const SizedBox(height: defaultSpacing),
            Text(
              'Today',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: fontSubHeading),
            ),
            const SizedBox(height: defaultSpacing),
            ...userdata.transactions.map(
              (transaction) => TransactionItemTile(
                transaction: transaction,
              ),
            )
          ],
        ),
      ),
    );
  }
}
