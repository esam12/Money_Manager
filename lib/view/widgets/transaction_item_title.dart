import 'package:flutter/material.dart';
import 'package:money_manager/data/userinfo.dart';
import 'package:money_manager/utils/constants.dart';

class TransactionItemTile extends StatelessWidget {
  final Transaction transaction;
  const TransactionItemTile({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: defaultSpacing / 2),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset.zero,
            blurRadius: 10,
            spreadRadius: 4,
          ),
        ],
        color: background,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: ListTile(
        title: Text(
          transaction.itemCategoryName,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          transaction.itemName,
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: fontSubHeading),
        ),
        leading: Container(
            padding: EdgeInsets.all(defaultSpacing / 2),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(defaultRadius / 2),
            ),
            child: transaction.categoryType == ItemCategoryType.fashion
                ? Icon(Icons.supervised_user_circle)
                : Icon(Icons.access_time_filled)),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '-${transaction.amount}',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: transaction.transactionType == TransactionType.outflow
                      ? Colors.red
                      : fontHeading,
                  fontSize: 13),
            ),
            Text(transaction.date,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontSize: 13)),
          ],
        ),
      ),
    );
  }
}
