import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ibob/pages/savings1.dart';

class AppRouter {
  GoRouter router = GoRouter(routes: [
    GoRoute(
        name: 'SavingsAccount1',
        path: '/savingsaccount1',
        pageBuilder: (context, state) {
          return MaterialPage(child: SavingsAccount1());
        }),
    GoRoute(
        name: 'SavingsAccount2',
        path: '/savingsaccount2',
        pageBuilder: (context, state) {
          return MaterialPage(child: SavingsAccount1());
        }),
    GoRoute(
        name: 'SavingsAccount3',
        path: '/savingsaccount3',
        pageBuilder: (context, state) {
          return MaterialPage(child: SavingsAccount1());
        }),
    GoRoute(
        name: 'SavingsAccount4',
        path: '/savingsaccount4',
        pageBuilder: (context, state) {
          return MaterialPage(child: SavingsAccount1());
        }),
    GoRoute(
        name: 'SavingsAccount5',
        path: '/savingsaccount5',
        pageBuilder: (context, state) {
          return MaterialPage(child: SavingsAccount1());
        }),
  ]);
}
