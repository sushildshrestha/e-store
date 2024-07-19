import 'package:e_store/components/list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shop tiles
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //drawer logo
              DrawerHeader(
                  child: Icon(
                Icons.shopping_bag_outlined,
                size: 85,
                color: Theme.of(context).colorScheme.onBackground,
              )),
              //
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
                child: CustomListTile(
                  onTap: () {
                    Navigator.canPop(context);
                    Navigator.pushNamed(context, '/store_page');
                  },
                  leading: const Icon(
                    Icons.home_outlined,
                    size: 30,
                  ),
                  title: const Text(
                    "Shop",
                    //textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              //go to cart
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                ),
                child: CustomListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/cart_page');
                  },
                  leading: const Icon(
                    Icons.shopping_cart_outlined,
                    size: 30,
                  ),
                  title: const Text(
                    "Cart",
                    //textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),

          //exit shop tile
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: CustomListTile(
              onTap: () {
                //Navigator.canPop(context);
                Navigator.pushNamed(context, '/intro_page');
              },
              leading: const Icon(
                Icons.exit_to_app,
                size: 30,
              ),
              title: const Text(
                "Exit",
                //textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          )

          //
        ],
      ),
    );
  }
}
