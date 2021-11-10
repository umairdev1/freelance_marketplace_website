import 'package:flutter/material.dart';

import '../../constants.dart';

class SideBar extends StatefulWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool ischeck = false;
  bool ischeck2 = false;
  bool ischeck3 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.account_tree_rounded,
                    color: kPrimaryColor,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    "Filter by",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 8.0),
                    decoration: BoxDecoration(
                        color: kBgColor,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "All Categories",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.white,
                        )
                      ],
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      decoration: BoxDecoration(
                        color: kcateColor,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: const Text(
                        "UI",
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      decoration: BoxDecoration(
                        color: kcateColor,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: const Text(
                        "UX",
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 8.0),
                    decoration: BoxDecoration(
                        color: kBgColor,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Search Location",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.white,
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                      value: ischeck,
                      activeColor: kPrimaryColor,
                      shape: const CircleBorder(),
                      side: const BorderSide(color: kPrimaryColor),
                      onChanged: (bool? value) {
                        setState(() {
                          ischeck = value!;
                        });
                      }),
                  const SizedBox(
                    width: 8.0,
                  ),
                  const Text(
                    "For all",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                      value: ischeck2,
                      activeColor: kPrimaryColor,
                      shape: const CircleBorder(),
                      side: const BorderSide(color: kPrimaryColor),
                      onChanged: (bool? value) {
                        setState(() {
                          ischeck2 = value!;
                        });
                      }),
                  const SizedBox(
                    width: 8.0,
                  ),
                  const Text(
                    "Safe deal",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                      value: ischeck3,
                      activeColor: kPrimaryColor,
                      shape: const CircleBorder(),
                      side: const BorderSide(color: kPrimaryColor),
                      onChanged: (bool? value) {
                        setState(() {
                          ischeck3 = value!;
                        });
                      }),
                  const SizedBox(
                    width: 8.0,
                  ),
                  const Text(
                    "Urgent only",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                color: kPrimaryColor,
                height: 60,
                minWidth: MediaQuery.of(context).size.width,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                onPressed: () {},
                child: const Text(
                  "Apply filter",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
