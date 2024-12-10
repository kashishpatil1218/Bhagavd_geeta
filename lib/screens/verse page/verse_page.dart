import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/home_provider.dart';
import '../component/app_bar_method.dart';
import '../component/box_method.dart';

class VersePage extends StatelessWidget {
  const VersePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.brown,
      appBar: AppBarMethod(
        context: context,
        isButton: true,
        isTitle: false,
        isDropdownButton: false,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQO7WhDWDMQFAWiFkbQe4EWRcdqsyeVGGDEg&s'),
                fit: BoxFit.cover)),
        child: Consumer<HomeProvider>(
          builder: (context, provider, child) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  boxMethod(
                    provider: provider,
                    languagesIndex: 0,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  boxMethod(
                    provider: provider,
                    languagesIndex: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  boxMethod(
                    provider: provider,
                    languagesIndex: 2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  boxMethod(
                    provider: provider,
                    languagesIndex: 3,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
