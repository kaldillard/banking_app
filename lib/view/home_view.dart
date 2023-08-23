import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height / 1.75,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.dollarSign,
                              size: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "USD",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Badge(
                              smallSize: 10,
                              child: FaIcon(FontAwesomeIcons.bell),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            FaIcon(FontAwesomeIcons.ellipsis),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.dollarSign),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "30,875",
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        ".78",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColor,
                      foregroundColor: Colors.white,
                      radius: 8,
                      child: const FaIcon(
                        FontAwesomeIcons.plus,
                        size: 8,
                      ),
                    ),
                    label: const Text(
                      "ADD MONEY",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FilledButton.tonal(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context).primaryColor),
                              shape: MaterialStateProperty.all(
                                const CircleBorder(),
                              ),
                              fixedSize: MaterialStateProperty.all(
                                  const Size.fromRadius(26))),
                          onPressed: () {},
                          child: const FaIcon(
                            FontAwesomeIcons.arrowRight,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Column(
                          children: [
                            CircleAvatar(
                              radius: 26,
                              backgroundImage:
                                  NetworkImage("https://i.pravatar.cc/75"),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text("Mary"),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Column(
                          children: [
                            CircleAvatar(
                              radius: 26,
                              backgroundImage:
                                  NetworkImage("https://i.pravatar.cc/75"),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text("Jake"),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Column(
                          children: [
                            CircleAvatar(
                              radius: 26,
                              backgroundImage:
                                  NetworkImage("https://i.pravatar.cc/75"),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text("Lucy"),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Column(
                          children: [
                            CircleAvatar(
                              radius: 26,
                              backgroundImage:
                                  NetworkImage("https://i.pravatar.cc/75"),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text("Steph"),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: FaIcon(FontAwesomeIcons.grip),
                  )
                ],
              ),
            ),
          ),
          const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  ListTile(
                    leading: Text(
                      "Today",
                      style: TextStyle(fontSize: 12),
                    ),
                    trailing: Text(
                      "\$350.00",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.white,
                      child: FaIcon(FontAwesomeIcons.amazon),
                    ),
                    title: Text("Amazon"),
                    subtitle: Text("5:00pm"),
                    subtitleTextStyle: TextStyle(
                      fontSize: 12,
                    ),
                    trailing: Text(
                      "\$250.00",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.white,
                      child: FaIcon(FontAwesomeIcons.apple),
                    ),
                    title: Text("Apple"),
                    subtitle: Text("4:38pm"),
                    subtitleTextStyle: TextStyle(
                      fontSize: 12,
                    ),
                    trailing: Text(
                      "\$100.00",
                      style: TextStyle(fontSize: 18),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade300,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.house,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.seedling,
            ),
            label: "Seedling",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.creditCard,
            ),
            label: "Credit Card",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.user,
            ),
            label: "User",
          ),
        ],
      ),
    );
  }
}
