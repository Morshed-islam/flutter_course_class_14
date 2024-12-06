import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_course_class_14/providers/cart_provider.dart';
import 'package:flutter_course_class_14/providers/user_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userNotifier = Provider.of<UserProvider>(context);
    final cartNotifier = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Consumer<UserProvider>(
          builder: (context, userNotifier, child) {
            return Text("Welcome, ${userNotifier.name}!");
          },
        ),
        // title: Text("Welcome, ${userNotifier.name}!"),
      ),
      body:
      Column(
        children: [

          // Consumer<CartProvider>(
          //   builder: (context, cartProvider, child) {
          //     return Text("Cart Items: ${cartProvider.items.length}");
          //   }
          // )

          Text("Cart Items: ${cartNotifier.items.length}"),

          ///WRONG WAY- Efficient resources management
          // Consumer<CartProvider>(
          //   builder: (context, cartNotifier, child) {
          //     return Column(
          //       children: [
          //         Text("Cart Items: ${cartNotifier.items.length}"),
          //         Text("Cart Items 3"),
          //         Text("Cart Items 4"),
          //         Text("Cart Items 5"),
          //       ],
          //     );
          //   },
          // ),

          // Text("Cart Items: ${cartNotifier.items.length}"),

          ElevatedButton(
            onPressed: () {
              context.read<CartProvider>().addItem("Item ${DateTime.now()}");
              // cartNotifier.addItem("Item ${DateTime.now()}");

            },
            child: Text("Add Item to Cart"),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<UserProvider>().updateName("John Doe");
              // userNotifier.updateName("John Doe");
            },
            child: Text("Update User Name"),
          ),
        ],
      ),
    );
  }
}