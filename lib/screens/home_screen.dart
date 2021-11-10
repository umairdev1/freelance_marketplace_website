import 'package:flutter/material.dart';
import 'package:freelance_marketplace_website/constants.dart';
import 'package:freelance_marketplace_website/model/product_model.dart';
import 'package:freelance_marketplace_website/model/responsive.dart';

import 'components/banner.dart';
import 'components/content_section.dart';
import 'components/menu.dart';
import 'components/sidebar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //now we make our site responsive
    return Scaffold(
      backgroundColor: kBgColor,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: const Icon(
                    Icons.api_rounded,
                    size: 50,
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 3,
              color: kPrimaryColor,
            ),
            MobMenu(),
          ],
        ),
      ),
      body: ListView(
        children: [
          MenuCard(),
          Container(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  constraints: const BoxConstraints(maxWidth: kmaxWidth),
                  child: Column(
                    children: [
                      const BannerSection(),
                      const SizedBox(
                        height: 30,
                      ),
                      //content section
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: ContentSection(),
                          ),
                          //Sidebar

                          if (Responsive.isDesktop(context))
                            Expanded(
                              child: SideBar(),
                            ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
