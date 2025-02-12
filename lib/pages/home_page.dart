import 'package:flutter/material.dart';
import 'package:next_app/components/my_current_location.dart';
import 'package:next_app/components/my_description_box.dart';
import 'package:next_app/components/my_drawer.dart';
import 'package:next_app/components/my_food_tile.dart';
import 'package:next_app/components/my_sliver_app_bar.dart';
import 'package:next_app/components/my_tap_bar.dart';
import 'package:next_app/models/food.dart';
import 'package:next_app/models/restaurant.dart';
import 'package:next_app/pages/food_pages.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // tab bar controller
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

//sort food to category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((Food) => Food.category == category).toList();
  }

  //retgurn list of foods in category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      //get category menu
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);
      return ListView.builder(
          itemCount: categoryMenu.length,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            //get individual food
            final food = categoryMenu[index];
            //return food tile
            return FoodTile(
                food: food,
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FoodPage(
                        food: food,
                      ),
                    )));
          });
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
              title: MyTapBar(tabController: _tabController),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  // currect location
                  const MyCurrentLocation(),
                  //descriptionn box
                  const MyDescriptionBox()
                ],
              ))
        ],
        body: Consumer<Restaurant>(
            builder: (context, Restaurant, child) => TabBarView(
                controller: _tabController,
                children: getFoodInThisCategory(Restaurant.menu))),
      ),
    );
  }
}
