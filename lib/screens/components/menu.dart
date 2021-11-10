import 'package:flutter/material.dart';

import '../../constants.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kSecondaryColor,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            constraints: const BoxConstraints(maxWidth: kmaxWidth),
            child: Column(
              children: [
                MediaQuery.of(context).size.width <= 450
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Builder(
                                  builder: (context) => IconButton(
                                      onPressed: () {
                                        Scaffold.of(context).openDrawer();
                                      },
                                      icon: Icon(
                                        Icons.menu,
                                        color: kPrimaryColor,
                                      ))),
                              SizedBox(
                                width: 8.0,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(60),
                                ),
                                child: const Icon(Icons.api_rounded),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: const Icon(Icons.person_rounded),
                          ),
                        ],
                      )
                    : Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: const Icon(Icons.api_rounded),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Menu(
                            title: "Work",
                            press: () {},
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Menu(
                            title: "Freelancers",
                            press: () {},
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.share_rounded,
                                color: kPrimaryColor,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.message_rounded,
                                color: kPrimaryColor,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.notifications_rounded,
                                color: kPrimaryColor,
                              )),
                          Container(
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: const Icon(Icons.person_rounded),
                          ),
                        ],
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
          const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class MobMenu extends StatefulWidget {
  const MobMenu({Key? key}) : super(key: key);

  @override
  _MobMenuState createState() => _MobMenuState();
}

class _MobMenuState extends State<MobMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share_rounded,
                    color: kPrimaryColor,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.message_rounded,
                    color: kPrimaryColor,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_rounded,
                    color: kPrimaryColor,
                  )),
              Container(
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(60),
                ),
                child: const Icon(Icons.person_rounded),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Menu(
            title: "Work",
            press: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          Menu(
            title: "Freelancers",
            press: () {},
          ),
        ],
      ),
    );
  }
}
