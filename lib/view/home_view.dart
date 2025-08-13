import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:online_banking/components/add_money_button.dart';
import 'package:online_banking/components/balance_widget.dart';
import 'package:online_banking/models/transaction_item_model.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          _buildTopSection(context),
          _buildTransactionsList(),
        ],
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildTopSection(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 1.75,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            _buildHeader(),
            const SizedBox(height: 40),
            BalanceWidget(),
            const SizedBox(height: 30),
            AddMoneyButton(),
            const SizedBox(height: 30),
            _buildUserAvatars(context),
            const SizedBox(height: 20),
            const Center(child: FaIcon(FontAwesomeIcons.grip)),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              FaIcon(FontAwesomeIcons.dollarSign, size: 20),
              SizedBox(width: 10),
              Text(
                "USD",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
          Row(
            children: [
              Badge(
                smallSize: 10,
                child: FaIcon(FontAwesomeIcons.bell),
              ),
              SizedBox(width: 20),
              FaIcon(FontAwesomeIcons.ellipsis),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildUserAvatars(BuildContext context) {
    final users = ["Mary", "Jake", "Lucy", "Steph"];

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 26,
            backgroundColor: Theme.of(context).primaryColor,
            child:
                const FaIcon(FontAwesomeIcons.arrowRight, color: Colors.white),
          ),
          const SizedBox(width: 20),
          ...users.map((name) => _buildUserAvatar(name)),
        ],
      ),
    );
  }

  Widget _buildUserAvatar(String name) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          CircleAvatar(
            radius: 26,
            backgroundImage: NetworkImage("https://i.pravatar.cc/75?u=$name"),
          ),
          const SizedBox(height: 8),
          Text(name),
        ],
      ),
    );
  }

  Widget _buildTransactionsList() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const ListTile(
              leading: Text("Today", style: TextStyle(fontSize: 12)),
              trailing: Text("\$350.00", style: TextStyle(fontSize: 12)),
            ),
            ...transactions
                .map((transaction) => _buildTransactionTile(transaction)),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactionTile(TransactionItem transaction) {
    return ListTile(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: Colors.white,
        child: FaIcon(transaction.icon),
      ),
      title: Text(transaction.title),
      subtitle: Text(transaction.time),
      subtitleTextStyle: const TextStyle(fontSize: 12),
      trailing: Text(
        transaction.amount,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }

  Widget _buildBottomNavBar() {
    const navItems = [
      (FontAwesomeIcons.house, "Home"),
      (FontAwesomeIcons.seedling, "Seedling"),
      (FontAwesomeIcons.creditCard, "Credit Card"),
      (FontAwesomeIcons.user, "User"),
    ];

    return BottomNavigationBar(
      backgroundColor: Colors.grey.shade300,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: navItems
          .map((item) => BottomNavigationBarItem(
                icon: FaIcon(item.$1),
                label: item.$2,
              ))
          .toList(),
    );
  }
}
